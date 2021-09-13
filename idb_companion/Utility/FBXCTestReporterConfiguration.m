/*
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import "FBXCTestReporterConfiguration.h"

#import <FBControlCore/FBControlCore.h>

@implementation FBXCTestReporterConfiguration

- (instancetype)initWithResultBundlePath:(nullable NSString *)resultBundlePath coveragePath:(nullable NSString *)coveragePath logDirectoryPath:(nullable NSString *)logDirectoryPath binariesPaths:(nullable NSArray<NSString *> *)binariesPaths reportAttachments:(BOOL)reportAttachments
{
  self = [super init];
  if (!self) {
    return nil;
  }

  _resultBundlePath = resultBundlePath;
  _coveragePath = coveragePath;
  _logDirectoryPath = logDirectoryPath;
  _binariesPaths = binariesPaths;
  _reportAttachments = reportAttachments;

  return self;
}

- (NSString *)description
{
  return [NSString stringWithFormat:@"Result Bundle %@ | Coverage Path %@ | Log Path %@ | Binaries Paths %@ | Report Attachments %d", self.resultBundlePath, self.coveragePath, self.logDirectoryPath, [FBCollectionInformation oneLineDescriptionFromArray:self.binariesPaths], self.reportAttachments];
}

@end
