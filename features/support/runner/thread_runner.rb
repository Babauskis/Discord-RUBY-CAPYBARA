module ThreadRunner
    def self.run(option)
      `export FORMAT=#{option['format']}; export REPORT_PATH="#{option['report_path']}"; parallel_cucumber features -n #{option['threads']} -o "GRID=#{option['grid']} BROWSER=#{option['browser']} ENVIRONMENT=#{option['environment']} REPORT_PATH="#{option['report_path']}" -p ci"`
    end
  end