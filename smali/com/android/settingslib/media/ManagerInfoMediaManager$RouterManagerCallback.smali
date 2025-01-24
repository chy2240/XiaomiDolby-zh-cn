.class final Lcom/android/settingslib/media/ManagerInfoMediaManager$RouterManagerCallback;
.super Ljava/lang/Object;
.source "ManagerInfoMediaManager.java"

# interfaces
.implements Landroid/media/MediaRouter2Manager$Callback;


# virtual methods
.method public onPreferredFeaturesChanged(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    const/4 p0, 0x0

    .line 194
    throw p0
.end method

.method public onRequestFailed(I)V
    .locals 0

    const/4 p0, 0x0

    .line 222
    throw p0
.end method

.method public onRouteListingPreferenceUpdated(Ljava/lang/String;Landroid/media/RouteListingPreference;)V
    .locals 0

    const/4 p0, 0x0

    .line 238
    throw p0
.end method

.method public onRoutesUpdated()V
    .locals 0

    const/4 p0, 0x0

    .line 189
    throw p0
.end method

.method public onSessionReleased(Landroid/media/RoutingSessionInfo;)V
    .locals 0

    const/4 p0, 0x0

    .line 232
    throw p0
.end method

.method public onSessionUpdated(Landroid/media/RoutingSessionInfo;)V
    .locals 0

    const/4 p0, 0x0

    .line 227
    throw p0
.end method

.method public onTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTransferred(Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V
    .locals 1

    .line 201
    invoke-static {}, Lcom/android/settingslib/media/ManagerInfoMediaManager;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 202
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTransferred() oldSession : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {p1}, Landroid/media/RoutingSessionInfo;->getName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", newSession : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p2}, Landroid/media/RoutingSessionInfo;->getName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 202
    const-string p1, "ManagerInfoMediaManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    .line 209
    throw p0
.end method
