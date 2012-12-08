module PageHelpers
  def page_title
    if data.page.title
      title = data.page.title
    else
      title = "No title: created by Middleman"
    end
    title
  end

  def page_keyword
    if data.page.keyword
      keyword = data.page.keyword
    else
      keyword = "No keyword"
    end
    keyword
  end

  def page_description
    if data.page.description
      description = data.page.description
    else
      description = "No description"
    end
    description
  end
end
