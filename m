Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE9CF3A6A
	for <lists+linux-riscv@lfdr.de>; Thu,  7 Nov 2019 22:24:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eJcyaE5olVWs4pEpg11kTJk6A0H8LSKvNNTmbmNLVLk=; b=taTR1vQAQoFjCQ
	G12X7CIl/urqieNssknAyOveNRF51wDO0M0DZFONbH079qrdNNMJLi//pkOm19vvaAighy/2by9fH
	lEkcKX1kp21dkRFjHrs4m0kSrqW6WeaY72/GNR8gBuL7O52Y+0ozNPRJ+keOKAKtLTCO1tTN/ve/o
	GdJmNrkfHrOiuBAeNfCjOx+zxy60/BNH+oN9ZIbrIb0VoAloX6ikvyk2MIKvGHZW9lpBsF+o+HA9I
	oFp/gBAlwHcnVZYXExDBJFMeFPtgHKmcniDpSri/hNc5FhkYldugMXVQQN9CydeiAbx2XBZLqguCd
	q98W6xrCZag9TpjVYxHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSpGJ-0007Fm-Lb; Thu, 07 Nov 2019 21:24:15 +0000
Received: from [2001:4bb8:184:e48:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSpGH-0007F5-Hl; Thu, 07 Nov 2019 21:24:13 +0000
From: Christoph Hellwig <hch@lst.de>
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>
Subject: QEMU RISC-V virt machine poweroff driver
Date: Thu,  7 Nov 2019 22:24:06 +0100
Message-Id: <20191107212408.11857-1-hch@lst.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
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
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi all,

this patch add a driver for the test device in the Qemu RISC-V
virt machine which allows properly shutting down the VM.
It also is added to the riscv defconfig given that qemu-virt
is the most popular riscv platform.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
