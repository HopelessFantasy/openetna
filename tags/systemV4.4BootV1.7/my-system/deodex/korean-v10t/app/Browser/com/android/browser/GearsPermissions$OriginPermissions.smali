.class public Lcom/android/browser/GearsPermissions$OriginPermissions;
.super Ljava/lang/Object;
.source "GearsPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/GearsPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OriginPermissions"
.end annotation


# static fields
.field public static mListener:Lcom/android/browser/GearsPermissions$PermissionsChangesListener;


# instance fields
.field mOrigin:Ljava/lang/String;

.field mPermissions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/browser/GearsPermissions$PermissionType;",
            "Lcom/android/browser/GearsPermissions$Permission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/browser/GearsPermissions$OriginPermissions;)V
    .registers 7
    .parameter "perms"

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    invoke-virtual {p1}, Lcom/android/browser/GearsPermissions$OriginPermissions;->getOrigin()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/GearsPermissions$OriginPermissions;->mOrigin:Ljava/lang/String;

    .line 148
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/browser/GearsPermissions$OriginPermissions;->mPermissions:Ljava/util/HashMap;

    .line 149
    invoke-virtual {p1}, Lcom/android/browser/GearsPermissions$OriginPermissions;->getPermissions()Ljava/util/HashMap;

    move-result-object v2

    .line 150
    .local v2, permissions:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/browser/GearsPermissions$PermissionType;Lcom/android/browser/GearsPermissions$Permission;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 151
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/browser/GearsPermissions$PermissionType;>;"
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 152
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/GearsPermissions$Permission;

    .line 153
    .local v1, permission:Lcom/android/browser/GearsPermissions$Permission;
    invoke-virtual {v1}, Lcom/android/browser/GearsPermissions$Permission;->getValue()I

    move-result v3

    .line 154
    .local v3, value:I
    invoke-virtual {v1}, Lcom/android/browser/GearsPermissions$Permission;->getType()Lcom/android/browser/GearsPermissions$PermissionType;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/android/browser/GearsPermissions$OriginPermissions;->setPermission(Lcom/android/browser/GearsPermissions$PermissionType;I)V

    goto :goto_1c

    .line 156
    .end local v1           #permission:Lcom/android/browser/GearsPermissions$Permission;
    .end local v3           #value:I
    :cond_38
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "anOrigin"

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/android/browser/GearsPermissions$OriginPermissions;->mOrigin:Ljava/lang/String;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/browser/GearsPermissions$OriginPermissions;->mPermissions:Ljava/util/HashMap;

    .line 144
    return-void
.end method

.method public static setListener(Lcom/android/browser/GearsPermissions$PermissionsChangesListener;)V
    .registers 1
    .parameter "listener"

    .prologue
    .line 138
    sput-object p0, Lcom/android/browser/GearsPermissions$OriginPermissions;->mListener:Lcom/android/browser/GearsPermissions$PermissionsChangesListener;

    .line 139
    return-void
.end method


# virtual methods
.method public getOrigin()Ljava/lang/String;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/browser/GearsPermissions$OriginPermissions;->mOrigin:Ljava/lang/String;

    return-object v0
.end method

.method public getPermission(Lcom/android/browser/GearsPermissions$PermissionType;)I
    .registers 3
    .parameter "type"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/browser/GearsPermissions$OriginPermissions;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/GearsPermissions$Permission;

    invoke-virtual {p0}, Lcom/android/browser/GearsPermissions$Permission;->getValue()I

    move-result v0

    return v0
.end method

.method public getPermissions()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/browser/GearsPermissions$PermissionType;",
            "Lcom/android/browser/GearsPermissions$Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/browser/GearsPermissions$OriginPermissions;->mPermissions:Ljava/util/HashMap;

    return-object v0
.end method

.method public print()V
    .registers 8

    .prologue
    const-string v6, "GearsPermissions"

    .line 185
    const-string v4, "GearsPermissions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permissions for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/browser/GearsPermissions$OriginPermissions;->mOrigin:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v4, p0, Lcom/android/browser/GearsPermissions$OriginPermissions;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 187
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/browser/GearsPermissions$PermissionType;>;"
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_67

    .line 188
    iget-object v4, p0, Lcom/android/browser/GearsPermissions$OriginPermissions;->mPermissions:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/GearsPermissions$Permission;

    .line 189
    .local v2, permission:Lcom/android/browser/GearsPermissions$Permission;
    invoke-virtual {v2}, Lcom/android/browser/GearsPermissions$Permission;->getType()Lcom/android/browser/GearsPermissions$PermissionType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/GearsPermissions$PermissionType;->getName()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, name:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/browser/GearsPermissions$Permission;->getValue()I

    move-result v3

    .line 191
    .local v3, value:I
    const-string v4, "GearsPermissions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 193
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #permission:Lcom/android/browser/GearsPermissions$Permission;
    .end local v3           #value:I
    :cond_67
    return-void
.end method

.method public setPermission(Lcom/android/browser/GearsPermissions$PermissionType;I)V
    .registers 5
    .parameter "type"
    .parameter "perm"

    .prologue
    .line 171
    iget-object v1, p0, Lcom/android/browser/GearsPermissions$OriginPermissions;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_13

    .line 172
    new-instance v0, Lcom/android/browser/GearsPermissions$Permission;

    invoke-direct {v0, p1, p2}, Lcom/android/browser/GearsPermissions$Permission;-><init>(Lcom/android/browser/GearsPermissions$PermissionType;I)V

    .line 173
    .local v0, permission:Lcom/android/browser/GearsPermissions$Permission;
    iget-object v1, p0, Lcom/android/browser/GearsPermissions$OriginPermissions;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .end local v0           #permission:Lcom/android/browser/GearsPermissions$Permission;
    .end local p0
    :goto_12
    return-void

    .line 177
    .restart local p0
    :cond_13
    sget-object v1, Lcom/android/browser/GearsPermissions$OriginPermissions;->mListener:Lcom/android/browser/GearsPermissions$PermissionsChangesListener;

    if-eqz v1, :cond_1c

    .line 178
    sget-object v1, Lcom/android/browser/GearsPermissions$OriginPermissions;->mListener:Lcom/android/browser/GearsPermissions$PermissionsChangesListener;

    invoke-interface {v1, p1, p2}, Lcom/android/browser/GearsPermissions$PermissionsChangesListener;->setPermission(Lcom/android/browser/GearsPermissions$PermissionType;I)Z

    .line 181
    :cond_1c
    iget-object v1, p0, Lcom/android/browser/GearsPermissions$OriginPermissions;->mPermissions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/GearsPermissions$Permission;

    invoke-virtual {p0, p2}, Lcom/android/browser/GearsPermissions$Permission;->setValue(I)V

    goto :goto_12
.end method
