Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE423122D95
	for <lists+linux-riscv@lfdr.de>; Tue, 17 Dec 2019 14:56:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=blFUwKmqQC8sk9DTjZtP+ozhWVBZiYvpgXP/qTVnjHU=; b=hC96zmZXWTbymrqC/69xxSI6co
	HVwrUFfg0u9wLhiHszQS+Uu3MNdBAHvzV7RPA55TLvn0AsPKt4d+roKS0+gYz/c+Vir3Paqll+3bb
	s2A8UAVKVWSUW8OuXHT5OgpFNBjo6y6YwNPO3rKNaXBKfzSHbzfKRUfX10G31ZgfvCGWGOogX3Y4S
	VwTVjhWl4QlB2TMQ36qUMZoRvjNZAM4lyLoUNzj6YtW2X0Ozd5HmPDVpnVrCpHCsk9YsPCtQUBa9l
	gPeHljCETKZubbuL9dqPaGV2h/5E4F6KTdFi9IiuK5vkk0fovqv1DKE/xHRKcYQCGkLDZ6ALjM8Fr
	fZTPLgZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihDKk-0000oY-8h; Tue, 17 Dec 2019 13:56:18 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihDKh-0000o1-4q
 for linux-riscv@lists.infradead.org; Tue, 17 Dec 2019 13:56:16 +0000
Received: from orion.localdomain ([95.114.21.161]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MeTsQ-1i8yVi3lOG-00aWiV; Tue, 17 Dec 2019 14:56:11 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2] scripts: package: mkdebian: add missing rsync dependency
Date: Tue, 17 Dec 2019 14:55:39 +0100
Message-Id: <20191217135539.17157-1-info@metux.net>
X-Mailer: git-send-email 2.11.0
X-Provags-ID: V03:K1:WUPSATQufwv3g8sriCrzFFny9krz3puHsUsVhC/8qZCoO8QvHna
 pcDXn1rS776PGDUel6/bOG0/+NOXCUi2FtJwRiCp3RFiPENrDV3ByJxTMEXhjHxWSP7D614
 r080F0CHrFXg2C6rt3G1UhEueRdXw1uUmK8fSeWTUre4BMxuKFKSGezkv6DWc4Uax9sXT6S
 xHb/wFVa4HCiOcM5MuFxA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:akmmA8gGnfA=:gadcc7LVAR0Su+9V+MKzLc
 PPWOhg5p2ou9NQ1kL8GR4JDM6/n/Ea7aMJrX6RA64ny8ARrQr5qQ1GOJeDqNL6AXQ8KU5xbC6
 wKGIvoOUqEKLQsPW2a6C1CcRgJzZEkKMZSQCYOMJlFIvVD534smOJvxZe1WSXT6kraaAPNZnT
 yX2Fcj1AbZmXR4m+gq/TmRxXS7rBzqRx5Tv1Ud1q9NMrmoopN87B/DT7aYq5T2ybFdUFbcvFS
 0LWhTuc+tGaoopq/yDLGXNBTQrZbPjpxc/Z4ysA1UAuA5N6PT4lapB5MLYGza04BqR43sPjPx
 2+kb9rcHA1skoadqOoD7f0TUqxUursjfxmMocZiPAC3dYOy467gw/6ci8qepH+fVpLSzwE212
 m8i3PxqFn/HWDOCiGv8alZKy7m0fM+4BrJGiuity7N0j21ZfuX4KrKxMKwBQEN1IFwR0L/KDw
 Zqed4ehrbW5tdFFe+KqMWJrPJ7rOS79T39PffLiqUAubZTBWA0gkjqJ5EmsS4pxzWpGftzsdC
 EC6t032IC7/VD8//MkIcHCXf6IOtJ9b6u5BrN2qGfBv22BBxESN3zEqeDyUNzJTB/aghmqsuA
 26wpLNBrFwTDOMGGqF021X7n4N474+P1WIpb5xkrL14FkAx27M6sOYOvfQa47mSgou9wBsOz8
 9gK5Eus47BXB3IPGIF1M61rQEZpQ5pFkHyQOgcRjI/HUcI3wXnnuiKYwPHtfP/VOBCh6RiJPC
 OSZDGCSnTy9858bEi725NL8ZjbMMRkAOk7z8Pz+jwP3M64C0v6nom9cyRnelx7AVRTUSb7LVS
 neW8I2kQKR89MrnXepuAnmXO74YUJ/a6HhU/CDvL8LLVJyAghLA3eGiqybEVbnjbGmCobqX+k
 bhgflO3FhirHN9ARfrRw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_055615_477590_A27586EA 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: masahiroy@kernel.org, michal.lkml@markovi.net,
 linux-riscv@lists.infradead.org, linux-kbuild@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

We've missed the dependency to rsync, so build fails on
minimal containers.

Fixes: 59b2bd05f5f4 ("kbuild: add 'headers' target to build up uapi headers in usr/include")
Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
---
 scripts/package/mkdebian | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/package/mkdebian b/scripts/package/mkdebian
index e0750b70453f..7c230016b08d 100755
--- a/scripts/package/mkdebian
+++ b/scripts/package/mkdebian
@@ -174,7 +174,7 @@ Source: $sourcename
 Section: kernel
 Priority: optional
 Maintainer: $maintainer
-Build-Depends: bc, kmod, cpio, bison, flex | flex:native $extra_build_depends
+Build-Depends: bc, rsync, kmod, cpio, bison, flex | flex:native $extra_build_depends
 Homepage: http://www.kernel.org/
 
 Package: $packagename
-- 
2.11.0


