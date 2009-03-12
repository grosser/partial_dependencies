namespace :partial_dependencies do
  desc "Generate a graphical (PNG) representation of the partial dependencies"
  task :generate_picture, :file_type, :view_set do |t, args|
    pd = PartialDependencies.new
    pd.dot(args.file_type || "png", args.view_set || "used")
  end
end