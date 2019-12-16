Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 150CB121A8D
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Dec 2019 21:08:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LeDMN718oNDBI0sDpBOWm27E0xMFvcpNwt9lhPyD83A=; b=ClSTYwr8zuCxMsx2m7oF6nhHIi
	8oZ8LZtEGv8764Ijs0bWMTAaprgl2S3LZI0VTKBpfW/PHUQqt5vzYow9VabFAk31UFz307xjGyZjT
	qv+wTSATEphOCvCrdXqatzYVqqcEMCDDv0yWOfnWwOcFtUBVCg8uM4GQvbrpwrMq6wotnr4W9W5Cj
	VFXe15LonTh0cwlGsjCu2MmjYduKbgFyGYI3bLs+YT8JXHWU3gMqBiOu/gTzvSTzXbWL2gOHDSLGC
	xRcOx4pTM++VMx/fjj/WwYmSamjTQFlShP9J4NL5usvyULuGBEIyRmqpMCCkMw5CsacnMep0nCEyr
	9Zb607dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igwfM-0005f2-Kb; Mon, 16 Dec 2019 20:08:28 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igwfJ-0005eV-Pa
 for linux-riscv@lists.infradead.org; Mon, 16 Dec 2019 20:08:27 +0000
Received: from orion.localdomain ([77.2.141.144]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MeTwY-1i6VS22h3k-00aXtK; Mon, 16 Dec 2019 21:08:18 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] scripts: package: mkdebian: add missing rsync dependency
Date: Mon, 16 Dec 2019 21:07:19 +0100
Message-Id: <20191216200719.30479-1-info@metux.net>
X-Mailer: git-send-email 2.11.0
X-Provags-ID: V03:K1:X3dLwHI5BlJvKUqov+BBRxI2y/lv6j7c5H9Exq3erg81r0oXhJV
 fNVV0JAb3EXCrDStihXCM7spxv21WfLySYZWlSiPqIdOG3Mdoi4Mq/1x1YR2HUp3iIrzEzL
 zwGLNs0H+1m6sPIbvCjzMARuWMD+XkhB1B/GMh/oiAdVJeCAYOWaftljzuhFVGpZ8w9G7Ww
 zkv8KdfjfJcSMS1Mr28rg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:gJcpD6BR8ag=:LFBKzkBFmfJiXCCHB5+tD2
 K02F0tflYl+vUPuovo2JPLQ3IGetPSmvxTZ4TJlnIu+knZoZZRx1L5ORkwALl+pR54fnFOKJL
 4aqu5XEZulrjHAWPqmwInktfbYghJH5/JqavTZqHEeTunLLe7sBlN26SJewzYVwO+YYOI/rXd
 mw5geX5+WXcwLjrbcnO8jzyvuW7lLhK6dWP8gumZVZb5Bc3xRv/aEJ+26XrURyihqnpGBL2Zo
 It0uDX57BXKKatifwXOtphjtfWIvFJBdN1SH54UG/wCiHtNaYo9OjaOZlozhGuQxWGFT5DBR9
 TqXW8YyEn+zwuUvs+fJgzF+X3I3MzYC/yqCKdpBzmge9cajpQUyzuI90hr8gjlMKnS6ytRFU+
 b4O048ZmxsTUJsw/ILXkGzklqF04VLBrcsX7OAy2B5Sxct/+AGm9OxtAqNhGwtgQ9+eabagRL
 pfaKCL3NxxEeVrB6tMvUgALC6EACdO++ljrZ2zXv5ES7Jl30i/WgxWThbsJdp4ch5aD6vC471
 rAjNgUpLvGskfU3aHFZ8Jxjj4dADn7ASAeLKmTT+DuZR+mqNX86P0c/4GIJiVpvUrOtvwZxc8
 m45910fXufUk7Grja3W0sKGSE2lBfgVAqRYj9DZJoIXc7ncwk1PwXEOhsqFOAnf45ncTcxxZY
 xdgi7OxncQ/iwwm2AgLDM0GKH4nHtpcC5qkemnVkn/Z+NvEwori+0FG1kQmPjhG+M0wTeIrKZ
 6iBzYgWWi5Vbefy8Fo7KTKtDUeEJGSXe7Vl62twFqPWl0Y//uxxOLoS8lCdby1xhac3slwQAh
 RGyRMKi87N6QS1Yc4svyNdHGn1zLeAJ/cZd3ewWpVpsD1V4hl2zT2rMJRehUsM+hJx3NermA1
 9kjqKN2V4JbTmc7zh47g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_120826_126784_270E2A5F 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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


