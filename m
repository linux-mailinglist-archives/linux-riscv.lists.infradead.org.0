Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 843F87599E
	for <lists+linux-riscv@lfdr.de>; Thu, 25 Jul 2019 23:31:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zFvWJXxK6lXNU/wK4sXuqtK6WBP/xLP9Ql370kLIyKo=; b=OolJ+anaPVMlu8
	aUebBCtJv600d2LbWbVayMmyyS+zP7v7Lkj4MeSH2iZbe1U8TijCejlbfWnzD32NufrQW7URaOVfA
	PoPbB4DpZlc8jFhDVS+zbueS2xH73e1gWPGhSOqVuwZoflZ0vtaMyDjdYC3nlJiVmU7dJvGcfcVBD
	tGDMlR7ZCDftjDXrE+9EzDdlcm1Du/pXivsAke+Sk4ckQVdUZ/9yuEk14hqUeqnQLo8wnSYteUPAp
	QRheNtVxY5sv+VFIoM6Rp6GBJs2XdwxQ0guFr9C1eMBQIavMBBTrf+/NvYc5hkVRY5G3EtH78VOf3
	lOnQIFs0Tvr2hbjCOa4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqlKF-00085B-Fi; Thu, 25 Jul 2019 21:30:59 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqlKC-0007wz-Dq
 for linux-riscv@lists.infradead.org; Thu, 25 Jul 2019 21:30:57 +0000
Received: by mail-io1-xd44.google.com with SMTP id e20so69995484iob.9
 for <linux-riscv@lists.infradead.org>; Thu, 25 Jul 2019 14:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=R34sE2QqEpGg+rOjPwslaDj/217UdV8AQ+/1Q6RrkTc=;
 b=KLn+NGOIueZ8ofrUSfHzFju02ajAJkkF2J8Q2OptIXHTJRh/RqWGa/B1iIT9/yd3LF
 14UOzf7MlJvZg0zZGEUYTLO2Bb3n01EPo5k4Q5W9dmFcg+/YM/KraPaLk3d3zhYCBPtE
 20dQoIBbfsEEpAtgOPFWksLy8ZODBrCDnc/vb8jr3lD1mKu/abGriNWaV/6QKlWmM7+v
 VUnDwSKeDtSNJJODGK2mt0EW5xpIm/9K3RCq0CV7XpCKw0pofYBRjKrFmsARi52b6Axf
 JM2XkL5qr3m3gZHe5jn36yfOe5dxDuO2I1fCNKy5eXpjshNf5zJr65zb9e/UjZQC++Jt
 f2Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=R34sE2QqEpGg+rOjPwslaDj/217UdV8AQ+/1Q6RrkTc=;
 b=NJtEj17fzK3Mi3USgkmHmPMS9oeK3mVuB2RJXSvJtTBx+TdNhZUXceaAX/X736PtGJ
 SlxTv7P6hNN08tI7qkrtHMdGygxbfPQ7d9L4l54YYTUQzjea1565ovnlBj84yoJ/10Pv
 pI6LINn1GkAo+/WaUbYHmlW1shRNBQwOcvVYycgqPNuoU/M/3COIEJoJldUkKtSKggr0
 GWPk6e5tyNiqVJT3G6zj8QyFWESBk7adkj6ytbMfMTteNWyiihCpn9bezQT/CycFrKEc
 RwzgRwFx2/gEju6gHU2WYnr2c02K/hyPI2lGKH5aaI/HtNBdBgX8WbVAvKSa/LAKspyL
 7hWA==
X-Gm-Message-State: APjAAAUFrX/JQgQ14huPiREheHwi+ScbPnsBkHN0WZEyJdYtku9g5U1Z
 1+9WQIC2gVG0vDMdNkXaAf3OwZvUKhU=
X-Google-Smtp-Source: APXvYqwVgEhvXkeqHfsRpK6JJQkcVYIip6G1SiuqcOLAHGGxZ9wHsmUDxl5+2sM2lJCAvov5rFgrGA==
X-Received: by 2002:a6b:f216:: with SMTP id q22mr44503183ioh.65.1564090255407; 
 Thu, 25 Jul 2019 14:30:55 -0700 (PDT)
Received: from localhost (67-0-24-96.albq.qwest.net. [67.0.24.96])
 by smtp.gmail.com with ESMTPSA id d25sm40703267iom.52.2019.07.25.14.30.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 25 Jul 2019 14:30:54 -0700 (PDT)
Date: Thu, 25 Jul 2019 14:30:54 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: linux-riscv@lists.infradead.org
Subject: [PATCH] riscv: dts: fu540-c000: drop "timebase-frequency"
Message-ID: <alpine.DEB.2.21.9999.1907251429420.32766@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_143056_497349_B3DD4739 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, robh+dt@kernel.org,
 palmer@sifive.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


On FU540-based systems, the "timebase-frequency" (RTCCLK) is sourced
from an external crystal located on the PCB.  Thus the
timebase-frequency DT property should be defined by the board that
uses the SoC, not the SoC itself.  Drop the superfluous
timebase-frequency property from the SoC DT data.  (It's already
present in the board DT data.)

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index 9bf63f0ab253..42b5ec223100 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -21,7 +21,6 @@
 	cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
-		timebase-frequency = <1000000>;
 		cpu0: cpu@0 {
 			compatible = "sifive,e51", "sifive,rocket0", "riscv";
 			device_type = "cpu";
-- 
2.22.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
