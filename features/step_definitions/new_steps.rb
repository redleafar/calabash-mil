And /^I wait (\d+) seconds$/ do |value|
    sleep value
end

And /^I wait 1 second$/ do
    sleep 1
end

Given /^I wait (\d+) seconds start$/ do |value|
    sleep value
end

Given /^I make (\d+) events with a waiting time of (\d+)/ do |touches, time|        
    for i in 1..touches do        
        actionNumber = rand(7)
        puts "actionNumber: #{actionNumber}"        
        
        if (actionNumber == 0)
            x = rand(1..96)
            y = rand(4..97)
            puts "Coordinate: [#{x}, #{y}]"
            puts "time: #{time}]" #Resolver problemas con time
            perform_action('click_on_screen', x, y) 
        elsif (actionNumber == 1)
            pan_right                    
        elsif (actionNumber == 2)
            pan_left
        elsif (actionNumber == 3) 
            queryResult = query("android.widget.EditText")
            queryResultSize = queryResult.size
            puts "queryResultSize: [#{queryResult.size}]"
            if (queryResultSize > 0)                                
                enter_text(queryResult[rand(queryResultSize)], "100")    
            end
        elsif (actionNumber == 4) 
            queryResult = query("android.widget.EditText")
            queryResultSize = queryResult.size
            puts "queryResultSize: [#{queryResult.size}]"
            if (queryResultSize > 0)                                
                enter_text(queryResult[rand(queryResultSize)], "sdknsefheifhie")    
            end
        elsif (actionNumber == 5)
            if isScrollable()
                scroll_up
            end
        else 
            if isScrollable()
                scroll_down
            end
        end            
        
        screenshot_embed
        #sleep time        
    end 
    
    seed = srand();
    puts "Seed: #{seed}"
end

def isScrollable(options={})
    begin        
        scroll_view_query_string = "android.widget.ScrollView index:0"
        list_view_query_string = "android.widget.AbsListView index:0"
        web_view_query_string = "android.webkit.WebView index:0"

        loop do
            if element_exists(scroll_view_query_string)
                return true
            elsif element_exists(list_view_query_string)
                return true
            elsif element_exists(web_view_query_string)
                return true
            else
                return false        
            end
        end        
    end
end    
    
Given /^I set the date to (\d+)-(\d+)-(\d+) on DatePicker with index "([^\"]*)"$/ do |month, day, year, index|    
    set_date("datePicker", year, month, day)
end

