class Scraping
    def self.get_product
        agent = Mechanize.new
        page = agent.get("https://reajoy.net/book-recommend/9523/#LIFE_SHIHT")
        elements = page.search('.booklink-image img')
        a = 0
        elements.each do |element|
            puts element.get_attribute('src')
            a += 1
            if a == 29 then
                break
            end
        end
    end
end


