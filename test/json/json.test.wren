import "graphics" for Canvas, Color
import "dome" for Json, Process

class Game {
    static init() {
      
      System.print("Load from String")
      var json = Json.parse("{\"George\":\"Harrison\",\"Paul\":\"McCartney\",\"John\":\"Lennon\",\"Ringo\":\"Starr\"}").json
      
      if(!(json is Map)) {
          System.print("JSON must be a Map")
          System.print(json)
          Process.exit(-1)
      }

      System.print("Load Object from File")
      json = Json.parseFromFile("obj.test.json").json
      if(!(json is Map)) {
          System.print("JSON must be a Map")
          System.print(json)
          Process.exit(-1)
      }

      System.print("Load Array from File")
      json = Json.parseFromFile("array.test.json").json
      if(!(json is List)) {
          System.print("JSON must be a List")
          System.print(json)
          Process.exit(-1)
      }

      System.print("Load Number from File")
      json = Json.parseFromFile("number.test.json").json
      if(!(json is Num)) {
          System.print("JSON must be a Num")
          System.print(json)
          Process.exit(-1)
      }

      System.print("Load String from File")
      json = Json.parseFromFile("string.test.json").json
      
      if(!(json is String)) {
          System.print("JSON must be a String")
          System.print(json)
          Process.exit(-1)
      }

      System.print("Load Null from File")
      json = Json.parseFromFile("null.test.json").json
      
      if(!(json is Null)) {
          System.print("JSON must be Null")
          System.print(json)
          Process.exit(-1)
      }

      System.print("Load Bool from File")
      json = Json.parseFromFile("bool.test.json").json
      
      if(!(json is Bool)) {
          System.print("JSON must be a Bool")
          System.print(json)
          Process.exit(-1)
      }

      System.print("Load Error from File")
      json = Json.parseFromFile("error.test.json")

      if(!(json.json is Null)) {
          System.print("json.json must be Null")
          System.print(json.json)
          Process.exit(-1)
      }

      if(!(json.error is Map)) {
          System.print("json.error must be a Map")
          System.print(json.error)
          Process.exit(-1)
      }

      System.print("Load Complex from File")
      json = Json.parseFromFile("complex.test.json").json
      
      if(!(json is Map)) {
          System.print("JSON must be a Map")
          System.print(json)
          Process.exit(-1)
      }

      if(json["uid"] != "76-buteo-albigula") {
          System.print("uid not found")
          System.print(json)
          Process.exit(-1)
      }

      if(json["name"]["latin"] != "Buteo albigula") {
          System.print("name.latin not found")
          System.print(json)
          Process.exit(-1)
      }

      Process.exit()
    }
    static update() {}
    static draw(dt) {
      Canvas.print("DOME Installed Successfully.", 10, 10, Color.white)
    }
}
