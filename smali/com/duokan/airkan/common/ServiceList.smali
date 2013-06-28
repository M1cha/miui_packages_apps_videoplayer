.class public Lcom/duokan/airkan/common/ServiceList;
.super Ljava/lang/Object;
.source "ServiceList.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private sServiceDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duokan/airkan/common/ServiceData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "ServiceList"

    sput-object v0, Lcom/duokan/airkan/common/ServiceList;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/duokan/airkan/common/ServiceList;->sServiceDataList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lcom/duokan/airkan/common/ServiceData;)Z
    .locals 5
    .parameter "sd"

    .prologue
    .line 16
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/duokan/airkan/common/ServiceList;->find(Lcom/duokan/airkan/common/ServiceData;)Lcom/duokan/airkan/common/ServiceData;

    move-result-object v1

    .line 17
    .local v1, tmp:Lcom/duokan/airkan/common/ServiceData;
    if-eqz v1, :cond_0

    .line 18
    sget-object v2, Lcom/duokan/airkan/common/ServiceList;->TAG:Ljava/lang/String;

    const-string v3, "already exist."

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    const/4 v2, 0x0

    .line 27
    :goto_0
    monitor-exit p0

    return v2

    .line 22
    :cond_0
    :try_start_1
    new-instance v0, Lcom/duokan/airkan/common/ServiceData;

    invoke-direct {v0, p1}, Lcom/duokan/airkan/common/ServiceData;-><init>(Lcom/duokan/airkan/common/ServiceData;)V

    .line 23
    .local v0, newsd:Lcom/duokan/airkan/common/ServiceData;
    iget-object v2, p1, Lcom/duokan/airkan/common/ServiceData;->name:Ljava/lang/String;

    iput-object v2, v0, Lcom/duokan/airkan/common/ServiceData;->displayName:Ljava/lang/String;

    .line 25
    sget-object v2, Lcom/duokan/airkan/common/ServiceList;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add new. name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/duokan/airkan/common/ServiceData;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/duokan/airkan/common/ServiceData;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ip:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/duokan/airkan/common/ServiceData;->getIP()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v2, p0, Lcom/duokan/airkan/common/ServiceList;->sServiceDataList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    const/4 v2, 0x1

    goto :goto_0

    .line 16
    .end local v0           #newsd:Lcom/duokan/airkan/common/ServiceData;
    .end local v1           #tmp:Lcom/duokan/airkan/common/ServiceData;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized clean()V
    .locals 1

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/duokan/airkan/common/ServiceList;->sServiceDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit p0

    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public find(Lcom/duokan/airkan/common/ServiceData;)Lcom/duokan/airkan/common/ServiceData;
    .locals 5
    .parameter "sd"

    .prologue
    .line 103
    iget-object v3, p0, Lcom/duokan/airkan/common/ServiceList;->sServiceDataList:Ljava/util/List;

    monitor-enter v3

    .line 104
    :try_start_0
    iget-object v2, p0, Lcom/duokan/airkan/common/ServiceList;->sServiceDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 106
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/duokan/airkan/common/ServiceData;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duokan/airkan/common/ServiceData;

    .line 108
    .local v1, tmp:Lcom/duokan/airkan/common/ServiceData;
    invoke-virtual {v1, p1}, Lcom/duokan/airkan/common/ServiceData;->equals(Lcom/duokan/airkan/common/ServiceData;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    sget-object v2, Lcom/duokan/airkan/common/ServiceList;->TAG:Ljava/lang/String;

    const-string v4, "entry found."

    invoke-static {v2, v4}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    monitor-exit v3

    .line 116
    .end local v1           #tmp:Lcom/duokan/airkan/common/ServiceData;
    :goto_0
    return-object v1

    .line 114
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    sget-object v2, Lcom/duokan/airkan/common/ServiceList;->TAG:Ljava/lang/String;

    const-string v3, "entry not found."

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v1, 0x0

    goto :goto_0

    .line 114
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/duokan/airkan/common/ServiceData;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public find(Ljava/lang/String;)Lcom/duokan/airkan/common/ServiceData;
    .locals 6
    .parameter "name"

    .prologue
    .line 51
    iget-object v3, p0, Lcom/duokan/airkan/common/ServiceList;->sServiceDataList:Ljava/util/List;

    monitor-enter v3

    .line 52
    :try_start_0
    iget-object v2, p0, Lcom/duokan/airkan/common/ServiceList;->sServiceDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 54
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/duokan/airkan/common/ServiceData;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duokan/airkan/common/ServiceData;

    .line 56
    .local v1, sd:Lcom/duokan/airkan/common/ServiceData;
    iget-object v2, v1, Lcom/duokan/airkan/common/ServiceData;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    sget-object v2, Lcom/duokan/airkan/common/ServiceList;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "entry found for name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    monitor-exit v3

    .line 64
    .end local v1           #sd:Lcom/duokan/airkan/common/ServiceData;
    :goto_0
    return-object v1

    .line 62
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    sget-object v2, Lcom/duokan/airkan/common/ServiceList;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "entry not found for name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v1, 0x0

    goto :goto_0

    .line 62
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/duokan/airkan/common/ServiceData;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public find(Ljava/lang/String;Ljava/lang/String;)Lcom/duokan/airkan/common/ServiceData;
    .locals 6
    .parameter "name"
    .parameter "type"

    .prologue
    .line 68
    iget-object v3, p0, Lcom/duokan/airkan/common/ServiceList;->sServiceDataList:Ljava/util/List;

    monitor-enter v3

    .line 69
    :try_start_0
    iget-object v2, p0, Lcom/duokan/airkan/common/ServiceList;->sServiceDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 71
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/duokan/airkan/common/ServiceData;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duokan/airkan/common/ServiceData;

    .line 73
    .local v1, sd:Lcom/duokan/airkan/common/ServiceData;
    iget-object v2, v1, Lcom/duokan/airkan/common/ServiceData;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/duokan/airkan/common/ServiceData;->type:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    sget-object v2, Lcom/duokan/airkan/common/ServiceList;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "entry found for name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/duokan/airkan/common/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    monitor-exit v3

    .line 81
    .end local v1           #sd:Lcom/duokan/airkan/common/ServiceData;
    :goto_0
    return-object v1

    .line 79
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    sget-object v2, Lcom/duokan/airkan/common/ServiceList;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "entry not found for name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v1, 0x0

    goto :goto_0

    .line 79
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/duokan/airkan/common/ServiceData;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public findByDisplayName(Ljava/lang/String;)Lcom/duokan/airkan/common/ServiceData;
    .locals 6
    .parameter "dispname"

    .prologue
    .line 85
    iget-object v3, p0, Lcom/duokan/airkan/common/ServiceList;->sServiceDataList:Ljava/util/List;

    monitor-enter v3

    .line 86
    :try_start_0
    iget-object v2, p0, Lcom/duokan/airkan/common/ServiceList;->sServiceDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 88
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/duokan/airkan/common/ServiceData;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duokan/airkan/common/ServiceData;

    .line 90
    .local v1, sd:Lcom/duokan/airkan/common/ServiceData;
    sget-object v2, Lcom/duokan/airkan/common/ServiceList;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/duokan/airkan/common/ServiceData;->displayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v2, v1, Lcom/duokan/airkan/common/ServiceData;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    sget-object v2, Lcom/duokan/airkan/common/ServiceList;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "entry found for name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    monitor-exit v3

    .line 99
    .end local v1           #sd:Lcom/duokan/airkan/common/ServiceData;
    :goto_0
    return-object v1

    .line 97
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    sget-object v2, Lcom/duokan/airkan/common/ServiceList;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "entry not found for name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v1, 0x0

    goto :goto_0

    .line 97
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/duokan/airkan/common/ServiceData;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public findIgnoreIP(Lcom/duokan/airkan/common/ServiceData;)Lcom/duokan/airkan/common/ServiceData;
    .locals 5
    .parameter "sd"

    .prologue
    .line 120
    iget-object v3, p0, Lcom/duokan/airkan/common/ServiceList;->sServiceDataList:Ljava/util/List;

    monitor-enter v3

    .line 121
    :try_start_0
    iget-object v2, p0, Lcom/duokan/airkan/common/ServiceList;->sServiceDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 123
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/duokan/airkan/common/ServiceData;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/duokan/airkan/common/ServiceData;

    .line 125
    .local v1, tmp:Lcom/duokan/airkan/common/ServiceData;
    invoke-virtual {v1, p1}, Lcom/duokan/airkan/common/ServiceData;->equalsIgnoreIP(Lcom/duokan/airkan/common/ServiceData;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    sget-object v2, Lcom/duokan/airkan/common/ServiceList;->TAG:Ljava/lang/String;

    const-string v4, "entry found."

    invoke-static {v2, v4}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    monitor-exit v3

    .line 133
    .end local v1           #tmp:Lcom/duokan/airkan/common/ServiceData;
    :goto_0
    return-object v1

    .line 131
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    sget-object v2, Lcom/duokan/airkan/common/ServiceList;->TAG:Ljava/lang/String;

    const-string v3, "entry not found."

    invoke-static {v2, v3}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/4 v1, 0x0

    goto :goto_0

    .line 131
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/duokan/airkan/common/ServiceData;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public declared-synchronized getDevices()[Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    .locals 13

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-object v12, p0, Lcom/duokan/airkan/common/ServiceList;->sServiceDataList:Ljava/util/List;

    monitor-enter v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 161
    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v7, deviceList:Ljava/util/List;,"Ljava/util/List<Lcom/duokan/airkan/common/aidl/ParcelDeviceData;>;"
    iget-object v0, p0, Lcom/duokan/airkan/common/ServiceList;->sServiceDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 165
    .local v10, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/duokan/airkan/common/ServiceData;>;"
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/duokan/airkan/common/ServiceData;

    .line 167
    .local v6, device:Lcom/duokan/airkan/common/ServiceData;
    new-instance v9, Lcom/duokan/airkan/common/MdnsExtraData;

    invoke-direct {v9}, Lcom/duokan/airkan/common/MdnsExtraData;-><init>()V

    .line 168
    .local v9, extra:Lcom/duokan/airkan/common/MdnsExtraData;
    iget-object v0, v6, Lcom/duokan/airkan/common/ServiceData;->extraText:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/duokan/airkan/common/MdnsExtraData;->parse(Ljava/lang/String;)Z

    .line 169
    new-instance v0, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    iget-object v1, v6, Lcom/duokan/airkan/common/ServiceData;->displayName:Ljava/lang/String;

    iget-object v2, v6, Lcom/duokan/airkan/common/ServiceData;->type:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/duokan/airkan/common/ServiceData;->getIP()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v6, Lcom/duokan/airkan/common/ServiceData;->extraText:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/duokan/airkan/common/MdnsExtraData;->getPlatformID()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/duokan/airkan/common/aidl/ParcelDeviceData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
    .end local v6           #device:Lcom/duokan/airkan/common/ServiceData;
    .end local v7           #deviceList:Ljava/util/List;,"Ljava/util/List<Lcom/duokan/airkan/common/aidl/ParcelDeviceData;>;"
    .end local v9           #extra:Lcom/duokan/airkan/common/MdnsExtraData;
    .end local v10           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/duokan/airkan/common/ServiceData;>;"
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 160
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 173
    .restart local v7       #deviceList:Ljava/util/List;,"Ljava/util/List<Lcom/duokan/airkan/common/aidl/ParcelDeviceData;>;"
    .restart local v10       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/duokan/airkan/common/ServiceData;>;"
    :cond_0
    :try_start_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    .line 174
    .local v11, size:I
    new-array v0, v11, [Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/duokan/airkan/common/aidl/ParcelDeviceData;

    .line 175
    .local v8, devices:[Lcom/duokan/airkan/common/aidl/ParcelDeviceData;
    sget-object v0, Lcom/duokan/airkan/common/ServiceList;->TAG:Ljava/lang/String;

    const-string v1, "generate devices list done"

    invoke-static {v0, v1}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v8
.end method

.method public declared-synchronized getDisplayNames()[Ljava/lang/String;
    .locals 8

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/duokan/airkan/common/ServiceList;->sServiceDataList:Ljava/util/List;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v2, lname:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/duokan/airkan/common/ServiceList;->sServiceDataList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 142
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/duokan/airkan/common/ServiceData;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 143
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/duokan/airkan/common/ServiceData;

    iget-object v3, v5, Lcom/duokan/airkan/common/ServiceData;->displayName:Ljava/lang/String;

    .line 144
    .local v3, name:Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/duokan/airkan/common/ServiceData;>;"
    .end local v2           #lname:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #name:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 137
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5

    .line 147
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/duokan/airkan/common/ServiceData;>;"
    .restart local v2       #lname:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :try_start_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 148
    .local v4, size:I
    new-array v5, v4, [Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 149
    .local v0, dispname:[Ljava/lang/String;
    sget-object v5, Lcom/duokan/airkan/common/ServiceList;->TAG:Ljava/lang/String;

    const-string v7, "generate name list done"

    invoke-static {v5, v7}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/duokan/airkan/common/ServiceData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/duokan/airkan/common/ServiceList;->sServiceDataList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Lcom/duokan/airkan/common/ServiceData;)V
    .locals 4
    .parameter "sd"

    .prologue
    .line 31
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/duokan/airkan/common/ServiceList;->find(Lcom/duokan/airkan/common/ServiceData;)Lcom/duokan/airkan/common/ServiceData;

    move-result-object v0

    .line 32
    .local v0, tmp:Lcom/duokan/airkan/common/ServiceData;
    if-eqz v0, :cond_0

    .line 33
    sget-object v1, Lcom/duokan/airkan/common/ServiceList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found, remove: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/duokan/airkan/common/ServiceData;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/duokan/airkan/common/ServiceList;->sServiceDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :goto_0
    monitor-exit p0

    return-void

    .line 36
    :cond_0
    :try_start_1
    sget-object v1, Lcom/duokan/airkan/common/ServiceList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/duokan/airkan/common/ServiceData;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 31
    .end local v0           #tmp:Lcom/duokan/airkan/common/ServiceData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized remove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .parameter "type"

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/duokan/airkan/common/ServiceList;->find(Ljava/lang/String;Ljava/lang/String;)Lcom/duokan/airkan/common/ServiceData;

    move-result-object v0

    .line 42
    .local v0, tmp:Lcom/duokan/airkan/common/ServiceData;
    if-eqz v0, :cond_0

    .line 43
    sget-object v1, Lcom/duokan/airkan/common/ServiceList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found, remove: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/duokan/airkan/common/ServiceData;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v1, p0, Lcom/duokan/airkan/common/ServiceList;->sServiceDataList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :goto_0
    monitor-exit p0

    return-void

    .line 46
    :cond_0
    :try_start_1
    sget-object v1, Lcom/duokan/airkan/common/ServiceList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not remove name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/duokan/airkan/common/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 41
    .end local v0           #tmp:Lcom/duokan/airkan/common/ServiceData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
