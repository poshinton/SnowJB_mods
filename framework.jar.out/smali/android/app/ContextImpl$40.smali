.class final Landroid/app/ContextImpl$40;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 533
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 3
    .parameter "ctx"

    .prologue
    .line 535
    const-string v2, "SPCconnectivity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 536
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/sprint/net/Isprintconnectivity$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sprint/net/Isprintconnectivity;

    move-result-object v1

    .line 537
    .local v1, service:Lcom/sprint/net/Isprintconnectivity;
    new-instance v2, Lcom/sprint/net/SPCConnectivityManager;

    invoke-direct {v2, v1}, Lcom/sprint/net/SPCConnectivityManager;-><init>(Lcom/sprint/net/Isprintconnectivity;)V

    return-object v2
.end method
