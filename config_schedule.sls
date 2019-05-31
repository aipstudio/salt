job1:
  schedule.present:
    - function: state.apply
    - enabled: True
    - minutes: 1
    - job_args:
      - copy_dir_sysadmin
