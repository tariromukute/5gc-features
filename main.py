def define_env(env):
    """
    Defines macros for preprocessing data
    """

    @env.macro
    def count_true(obj: dict):
        return list(obj.values()).count(True)