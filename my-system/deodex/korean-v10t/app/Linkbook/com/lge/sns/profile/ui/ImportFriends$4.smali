.class Lcom/lge/sns/profile/ui/ImportFriends$4;
.super Ljava/lang/Object;
.source "ImportFriends.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/sns/profile/ui/ImportFriends;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/sns/profile/ui/ImportFriends;


# direct methods
.method constructor <init>(Lcom/lge/sns/profile/ui/ImportFriends;)V
    .registers 2
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/lge/sns/profile/ui/ImportFriends$4;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    .line 179
    iget-object v3, p0, Lcom/lge/sns/profile/ui/ImportFriends$4;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    invoke-static {v3}, Lcom/lge/sns/profile/ui/ImportFriends;->access$100(Lcom/lge/sns/profile/ui/ImportFriends;)Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;->getSelected()Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;

    move-result-object v2

    .line 180
    .local v2, ve:Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;
    if-nez v2, :cond_d

    .line 196
    :goto_c
    return-void

    .line 185
    :cond_d
    :try_start_d
    iget-object v3, p0, Lcom/lge/sns/profile/ui/ImportFriends$4;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    invoke-static {v3}, Lcom/lge/sns/profile/ui/ImportFriends;->access$700(Lcom/lge/sns/profile/ui/ImportFriends;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/sns/profile/ui/ImportFriends$4;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    invoke-static {v4}, Lcom/lge/sns/profile/ui/ImportFriends;->access$600(Lcom/lge/sns/profile/ui/ImportFriends;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;->mProfile:Lcom/lge/sns/profile/ProfileListItem;

    invoke-virtual {v5}, Lcom/lge/sns/profile/ProfileListItem;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/lge/sns/profile/IProfileFacade;->getProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;

    move-result-object v1

    .line 186
    .local v1, profile:Lcom/lge/sns/profile/Profile;
    iget-object v3, p0, Lcom/lge/sns/profile/ui/ImportFriends$4;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    invoke-static {v3}, Lcom/lge/sns/profile/ui/ImportFriends;->access$700(Lcom/lge/sns/profile/ui/ImportFriends;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/sns/profile/ui/ImportFriends$4;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    invoke-interface {v3, v4, v1}, Lcom/lge/sns/profile/IProfileFacade;->insertFromProfileToContact(Landroid/content/Context;Lcom/lge/sns/profile/Profile;)Z

    .line 187
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;->isAdded:Z

    .line 188
    iget-object v3, p0, Lcom/lge/sns/profile/ui/ImportFriends$4;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    invoke-static {v3}, Lcom/lge/sns/profile/ui/ImportFriends;->access$100(Lcom/lge/sns/profile/ui/ImportFriends;)Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;->disSelect()V

    .line 189
    iget-object v3, p0, Lcom/lge/sns/profile/ui/ImportFriends$4;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    iget-object v3, v3, Lcom/lge/sns/profile/ui/ImportFriends;->mContactsEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v3, p0, Lcom/lge/sns/profile/ui/ImportFriends$4;->this$0:Lcom/lge/sns/profile/ui/ImportFriends;

    invoke-static {v3}, Lcom/lge/sns/profile/ui/ImportFriends;->access$800(Lcom/lge/sns/profile/ui/ImportFriends;)V
    :try_end_46
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_d .. :try_end_46} :catch_47
    .catch Lcom/lge/sns/SnsException; {:try_start_d .. :try_end_46} :catch_4d

    goto :goto_c

    .line 191
    .end local v1           #profile:Lcom/lge/sns/profile/Profile;
    :catch_47
    move-exception v3

    move-object v0, v3

    .line 192
    .local v0, e:Lcom/lge/sns/UnauthorizatedException;
    invoke-virtual {v0}, Lcom/lge/sns/UnauthorizatedException;->printStackTrace()V

    goto :goto_c

    .line 193
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    :catch_4d
    move-exception v3

    move-object v0, v3

    .line 194
    .local v0, e:Lcom/lge/sns/SnsException;
    invoke-virtual {v0}, Lcom/lge/sns/SnsException;->printStackTrace()V

    goto :goto_c
.end method
