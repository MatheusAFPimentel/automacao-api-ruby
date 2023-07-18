class GetStartup < SitePrism::Page
   
    def getStartUp()
        $response = HTTParty.get($uri_base)
        puts "response code #{$response.code}"
        puts "reponse body #{$response.body}"
        puts "reponse message #{$response.message}"
    end

    def startUpChecked
        expect($response.code).to eql 200
    end
end