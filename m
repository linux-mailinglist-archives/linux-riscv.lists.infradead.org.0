Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C302E746
	for <lists+linux-riscv@lfdr.de>; Wed, 29 May 2019 23:16:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H9KkJ9XQvVv4vptrCbuR61A7bdySUepRrGmNOGfkgqk=; b=X1H87H1KRkY4Rd
	MBZdzY2yG5QXulWDLNiC052iayLxdhguClSHOyAA+POdBSU9gIRHPQsdl68VtvzBMElRdoR3BPVt7
	CnjVvUW2mWUykYPtFrsxwp73ZeBYU6qjew4oInOEg2hWAmAgqebBUks7WCnYOxFY8d/sLvti7rRJM
	gNry7wnemUZgNrKdP8sjGd4Jo/T44rlWgCrIdY6GNOrayt3D9BDvGV/qMgY3lkqxZZNzbgjzvuth+
	msHJGKNPzAG3S/5WV3fggBzr1OCea4P4C6MuKZMyFPSZrbQyAMinnblwk4njC1Hr2ZLBWQA6t53Mp
	8aXA9v8tQMKzHEoqZAmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW5wL-0000Zn-8X; Wed, 29 May 2019 21:16:53 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW5wE-0000QW-FL; Wed, 29 May 2019 21:16:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1559164606; x=1590700606;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=w01oF4mU+3Ozo2+tH2H+ijQALtPIV7gcFM9ir50d13s=;
 b=dNbYJBShWZ6O/cJDrDcUAlJEuOFbQDYWfwmF422kImr8Lr7SSMkZ9pDp
 aeiHCUD/3C131CrNiaZIeWOb3drW93GJOJHRyYvDezioUFN7xfPmOE1Vf
 Nu8tIT3fP26lYMuL8td67VHYDnziebQ9SMH6pdSHAu5gagvm9FWQkub2g
 zczS8maPqbk4uI31DeU1JbLX5TddBsxgAGXI3+LnZ+HzBzomg3LjI9TK8
 uVSYTVNNU4nhhLjbioDHrieVnBxefYaT5MRN4QwWHy3+t1ki1vpLuMsX8
 FT41hZ9YZTh9atwngSftbQ3LosW4qHE+jZMFE+jqqk8MWjqxEaK4zxMdK Q==;
X-IronPort-AV: E=Sophos;i="5.60,527,1549900800"; d="scan'208";a="215589985"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 30 May 2019 05:16:45 +0800
IronPort-SDR: nkVO+tn3UJCKFgym8NHgyWn29OYGjKGiisRdn/kuGC6U30MScbE4IEJwu6yYtBG67AE4+OEMBM
 lzPRqOLP+o77RTFkD8Ugt7tGh7qKy4w2dpfxouk2JhzSic4PgVJJDucyzTaKYupjjKcotcAGQ4
 Xps+19H9ld3FtHQDd7GM+4r01lCg8DooTeSCqcekz7URRzgXGNFhJQPCJQfXiC0KAz3fYo8P4r
 R3arb4DFsAi19LiHf+eS9KiaIHRU+Ykbwde5RzRSnVe0H5Z47eoY/+514Zfux76YCA4rtwyu07
 TVv5dR517h2PrW0Ntm+SOuL+
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP; 29 May 2019 13:54:17 -0700
IronPort-SDR: puhTT5Dh+G71vM72tVc8ptf1yxDE3pK3IqWqxPilGftHruywYWp7DiUOWLL/8Zl4Wasd5GL6IV
 QI6HPxKaOaJr03MMhGD5qZ/zVNzpOGAXRNmqljAEAkJ7QwtrIMauEM0oXLcpZoHuGTt44l8cTH
 FBG0PPVHtYEOqwQfDLmVSpYAlFXBfIBAC6asxGLXdBNRDj++b7BZWQiK1Vl5YzzZ4llGkIb6gu
 CvOtbf93ldIuIZthY5plMj/ljmYDfW8ZJrflO1dnrib5LGVqvW9BZdTuaQJsJgKnR6O1heiBtR
 8cQ=
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 29 May 2019 14:16:45 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v6 6/7] base: arch_topology: update Kconfig help description
Date: Wed, 29 May 2019 14:13:39 -0700
Message-Id: <20190529211340.17087-7-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190529211340.17087-1-atish.patra@wdc.com>
References: <20190529211340.17087-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_141647_036695_93B68034 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Atish Patra <atish.patra@wdc.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Ingo Molnar <mingo@kernel.org>,
 Anup Patel <anup@brainfault.org>, Russell King <linux@armlinux.org.uk>,
 Morten Rasmussen <morten.rasmussen@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Rob Herring <robh+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jeremy Linton <jeremy.linton@arm.com>, Otto Sabart <ottosabart@seberm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: Sudeep Holla <sudeep.holla@arm.com>

Commit 5d777b185f6d ("arch_topology: Make cpu_capacity sysfs node as read-only")
made cpu_capacity sysfs node read-only. Update the GENERIC_ARCH_TOPOLOGY
Kconfig help section to reflect the same.

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/base/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/base/Kconfig b/drivers/base/Kconfig
index dc404492381d..28b92e3cc570 100644
--- a/drivers/base/Kconfig
+++ b/drivers/base/Kconfig
@@ -202,7 +202,7 @@ config GENERIC_ARCH_TOPOLOGY
 	help
 	  Enable support for architectures common topology code: e.g., parsing
 	  CPU capacity information from DT, usage of such information for
-	  appropriate scaling, sysfs interface for changing capacity values at
+	  appropriate scaling, sysfs interface for reading capacity values at
 	  runtime.
 
 endmenu
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
