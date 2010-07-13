.class public Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;
.super Ljava/lang/Object;
.source "ContactsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IsPrimaryInfo"
.end annotation


# instance fields
.field id:Ljava/lang/Long;

.field isPrimary:Z

.field kind:Ljava/lang/Integer;

.field person:Ljava/lang/Long;

.field final synthetic this$0:Lcom/android/providers/contacts/ContactsProvider;


# direct methods
.method protected constructor <init>(Lcom/android/providers/contacts/ContactsProvider;)V
    .registers 2
    .parameter

    .prologue
    .line 3247
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider$IsPrimaryInfo;->this$0:Lcom/android/providers/contacts/ContactsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
