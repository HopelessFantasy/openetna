.class public Landroid/app/SearchManager$DialogCursorProtocol;
.super Ljava/lang/Object;
.source "SearchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogCursorProtocol"
.end annotation


# static fields
.field public static final CLICK:I = 0x2

.field public static final CLICK_RECEIVE_SELECTED_POS:Ljava/lang/String; = "DialogCursorProtocol.CLICK.receiveSelectedPosition"

.field public static final CLICK_SEND_MAX_DISPLAY_POS:Ljava/lang/String; = "DialogCursorProtocol.CLICK.sendDisplayPosition"

.field public static final CLICK_SEND_POSITION:Ljava/lang/String; = "DialogCursorProtocol.CLICK.sendPosition"

.field public static final METHOD:Ljava/lang/String; = "DialogCursorProtocol.method"

.field public static final POST_REFRESH:I = 0x0

.field public static final POST_REFRESH_RECEIVE_DISPLAY_NOTIFY:Ljava/lang/String; = "DialogCursorProtocol.POST_REFRESH.displayNotify"

.field public static final POST_REFRESH_RECEIVE_ISPENDING:Ljava/lang/String; = "DialogCursorProtocol.POST_REFRESH.isPending"

.field public static final THRESH_HIT:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
