import { relationalStore } from "@kit.ArkData";

/// 数据库实例模型
export class DbModel {
  databaseId: number; // 数据库ID
  databaseName: string; // 数据库名称
  singleInstance: boolean; // 是否单例模式
  rdbStore: relationalStore.RdbStore | null; // 数据库实例

  constructor(databaseId: number, databaseName: string, singleInstance: boolean, rdbStore: relationalStore.RdbStore) {
    this.databaseId = databaseId;
    this.databaseName = databaseName;
    this.singleInstance = singleInstance;
    this.rdbStore = rdbStore;
  }

  public getId(): number {
    return this.databaseId;
  }

  public getName(): string {
    return this.databaseName;
  }

  public isSingle(): boolean {
    return this.singleInstance;
  }

  public getDb(): relationalStore.RdbStore | null {
    return this.rdbStore;
  }
}