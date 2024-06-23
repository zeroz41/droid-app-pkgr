project('qt6-qml-example', 'cpp',
  default_options: ['cpp_std=c++17'])

qt6 = import('qt6')
qt6_dep = dependency('qt6', modules: ['Core', 'Gui', 'Quick', 'Qml'])

# Get include directories
qt6_include_dirs = qt6_dep.get_variable('includedir')

Backend_sources = [
  'src/Backend.cpp',
  'src/main.cpp',
]

Backend_headers = [
  'include/Backend.h',
]

qrc_file = files('qml/qml.qrc')

moc_files = qt6.preprocess(
  moc_headers: Backend_headers,
  include_directories: include_directories('include')
)

resources = qt6.compile_resources(
  name: 'qml',
  sources: [qrc_file],
)

executable('qt6-qml-example',
  [Backend_sources, moc_files, resources],
  dependencies: qt6_dep,
  include_directories: [include_directories('include'), qt6_include_dirs],
  install: true)