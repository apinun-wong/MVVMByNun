# MVVMByNun
MVVM By Nun

## Why we must use object mapper more than codable
### ObjectMapper
- This is a third party framework.
- Object Mapper has type transformation support.
- Object Mapper is said to be faster than Codable. (or more precisely than JSONEncoder/Decoder)
- Updates are not promised using ObjectMapper with new Swift version releases.
- Adds extra dependency in your project.
- ObjectMapper is protocol that is further inherited from BaseMappable protocol.
- Need to update never versions with CocoaPods or other dependency manager.
- Need to define mapping for every field with key against JSON.
### Codable
- This is Swift native solution.
- Codable is probably slower than ObjectMapper because it’s built mapping solution. When you got no coding keys, swift will read through class properties using mirror and then map.
- In Codable we need external library for type transformation.
- Removes third party dependency for parsing and mapping.
- If model object fields are different than JSON keys , we need to define keys as enums using CodingKey protocol.
- Codable is a protocol which is a composition of two other protocols: Encodable & Decodable.
- Auto generates encode and init methods if fields have same name as keys as in JSON, so less code is required.
- As it is native solution new updates are available in Foundation framework.

Reference: Medium: [Medium of Qamar Saleem](https://medium.com/@qamar_37318/war-on-json-in-swift-object-mapper-vs-codable-e0598a64c746#:~:text=Codable%20is%20probably%20slower%20than,dependency%20for%20parsing%20and%20mapping.)
## Tools for generate Object Mapper