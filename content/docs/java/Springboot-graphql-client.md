---
draft: false
---

# Minimal Graphql client request with Springboot

![Photo from Farzad Nazifi under Unsplash Licence](https://miro.medium.com/max/1280/1*eyC_K8xUyRHqlIaIbghHyg.jpeg)
*https://unsplash.com/license Photo from Farzad Nazifi under Unsplash Licence*

## Introduction

Most API’s architectural styles are RESTful. [For some good reasons](https://www.javatpoint.com/graphql-advantages-and-disadvantages), APIs can also be built based on a Graphql architecture style. I recently had the opportunity to call one of them. I discovered and tried several ways to perform this Graphql request, all with pros and cons. In this article, I will describe how to perform a **minimal Graphql client request** with **Spring Boot** and **WebClient**.

## Requirements

A Spring Boot Project is mandatory. I am using maven here.

## Dependencies

### Mandatory

**WebFlux** dependency to get WebClient:

```xml
<dependency>
 <groupId>org.springframework.boot</groupId>
 <artifactId>spring-boot-starter-webflux</artifactId>
</dependency>
```
**Starter Test** dependency:

```xml
<dependency>
 <groupId>org.springframework.boot</groupId>
 <artifactId>spring-boot-starter-test</artifactId>
 <scope>test</scope>
</dependency>
```
to make sure Spring Application Context loads:

<script src="https://gist.github.com/francoiducat/de0f85dab5a4a98e341d82d0811ec5a9.js"></script>

### Optional
**Lombok** because it saves boilerplate code:
```xml
<dependency>
 <groupId>org.projectlombok</groupId>
 <artifactId>lombok</artifactId>
 <optional>true</optional>
</dependency>
```

## Graphql Server

I found this public [Countries Graphql API](https://countries.trevorblades.com/) from [trevorblades](https://github.com/trevorblades/countries). This API uses this [Countries List](https://annexare.github.io/Countries/) as data sources.

## Graphql Client

### Graphql request body

#### 1 Basic curl to get familiar with Graphql client request

A [Graphql request](https://graphql.org/learn/queries/) requires a *body request* containing at least a **query**. Optionally a **variable** and an **operationName**. ([operationName](https://graphql.org/learn/serving-over-http/) is only required if multiple operations are present in the query. I don’t use it in this tutorial).

Just like this curl example:

```
curl \
--location \
--request POST 'https://countries.trevorblades.com/' \
--header 'Content-Type: application/json' \
--data-raw '{"query":"query {  \n    country(code: \"BE\") { \n       name\n       capital\n       currency\n    }\n}","variables":{}}'
```

You may copy/paste it into your terminal. The response should look like this

```json
{
 "data": {
 "country": {
    "name": "Belgium",
    "capital": "Brussels",
    "currency": "EUR"
  }
 }
}
```

So far we have a working Graphql curl request. Let’s now code it in java.

#### 2. Java Graphql query

##### 2.1 GraphqlRequestBody

Let’s create the *GraphqlRequestBody* object.

##### 2.2 Graphql Query

Let’s now create a `getCountryDetails.graphql` file in the resources folder of the project.

```java
query($code: ID!) {
 country(code: $code) {
   name
   capital
   currency
 }
}
```

##### 2.3 Graphql Variables

Let’s create a `variables.graphql` file in the resources folder.

```json
{
  "code" : "countryCode"
}
```


### Graphql response

Now that I have my Graphql request body and based on what I’m expecting from the API, let's handle the response

#### Data Transfer Object

I create my `CountryDto` Object :

```java
@Getter
public class CountryDto {

  private CountryData data;

  @Getter
  public class CountryData {

    private Country country;

    @Getter
    public class Country {

      private String name;
      private String capital;
      private String currency;
    }
  }
}
```

Eventually, let’s create the `CountryClient` class 😀.

I said it was a minimal Graphql client request, didn’t I?

```java
@Service
@Slf4j
public class CountryClient {

  private final String url;

  public CountryClient(@Value("https://countries.trevorblades.com/") String url) {
    this.url = url;
  }

  public CountryDto getCountryDetails(final String countryCode) throws IOException {

    WebClient webClient = WebClient.builder().build();

    GraphqlRequestBody graphQLRequestBody = new GraphqlRequestBody();

    final String query = GraphqlSchemaReaderUtil.getSchemaFromFileName("getCountryDetails");
    final String variables = GraphqlSchemaReaderUtil.getSchemaFromFileName("variables");

    graphQLRequestBody.setQuery(query);
    graphQLRequestBody.setVariables(variables.replace("countryCode", countryCode));

    return webClient.post()
        .uri(url)
        .bodyValue(graphQLRequestBody)
        .retrieve()
        .bodyToMono(CountryDto.class)
        .block();
  }
}
```

`GraphqlSchemaReaderUtil` class to read Graphql files stored in the resource folder:

```java
@Slf4j
public final class GraphqlSchemaReaderUtil {

  public static String getSchemaFromFileName(final String filename) throws IOException {
    return new String(
        GraphqlSchemaReaderUtil.class.getClassLoader().getResourceAsStream("graphql/" + filename + ".graphql").readAllBytes());
  }
}
```

Let’s just log the Graphql response in the **main** method of our Spring Boot App:

```java
@SpringBootApplication
@Slf4j
public class GraphqlClientApplication {

  public static void main(String[] args) throws IOException {

    ConfigurableApplicationContext context = SpringApplication.run(GraphqlClientApplication.class, args);
    CountryClient client = (CountryClient) context.getBean("countryClient");
    ObjectWriter ow = new ObjectMapper().writer().withDefaultPrettyPrinter();
    CountryDto countryDto = client.getCountryDetails("BE");
    log.info(ow.writeValueAsString(countryDto));

  }
}
```

Now, your console should log the response like this:

![Graphql-response](https://miro.medium.com/max/700/1*sGRH647O6BKgkHBkGEpYYA.png)

## Unit Test

Unit test with MockWebServer can be found [here](https://github.com/francoiducat/springboot-minimal-graphql-client/tree/unit-test-with-MockWebServer).

## TL;DR

Go to [Github Repo](https://github.com/francoiducat/springboot-minimal-graphql-client).
