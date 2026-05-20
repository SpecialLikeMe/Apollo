#pragma once

#include <memory>
#include <vector>

class ApolloRuntimePhase;

std::vector<std::shared_ptr<const ApolloRuntimePhase>> borrowCheckerPhases();