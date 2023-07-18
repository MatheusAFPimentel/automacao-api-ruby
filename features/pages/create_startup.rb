class CreateStartup < SitePrism::Page

    def postStartup
        $response = HTTParty.post($uri_base, :body => {"nome":@nome,"cidade":@cidade})
        puts "response code #{$response.code}"
        puts "reponse body #{$response.body}"
        puts "reponse message #{$response.message}"
    end

    def startUpChecked
        expect($response.code).to eql 400
        puts $response.message
    end
end