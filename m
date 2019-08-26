Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFEC19D9F1
	for <lists+linux-riscv@lfdr.de>; Tue, 27 Aug 2019 01:33:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/ky2xn6JlTJt90VGd2+ovxZQjIa124Gb8LxJi9fcma0=; b=OYba+TYBaxnu2Q
	6LVjGxHcFRTNw7M9nwgTMZ8MJU95VssdXqraQ6ZdLnHP+K+BRLWG0yosn2csu+QauD/1WkEoQCYyt
	7T6zSwVlIUqiL7IUYcwo0dfixGP/YsfI3aIsEGZHQBtnYvi1BFJ8zMvrxS5kCFzuT5gEGOGI60mf/
	n54FkynYTd4+n9RaJSJYlGOrJi2aBf2B4OrWMr3midh/qUuhwuYyArZ/FlCBgX6VGlrl3bg4feyCv
	YJzR/MTMJl9VsMru2regEIVScFnxHiTED+J1hpH23J2JBx/fWuikC8GNWbzk9mjmS4/bjjPRwOp2n
	bLavADWEG0WJJ0d0kBBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2OUY-000478-Pb; Mon, 26 Aug 2019 23:33:42 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2OUQ-00042W-AC
 for linux-riscv@lists.infradead.org; Mon, 26 Aug 2019 23:33:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1566862414; x=1598398414;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=c7HyBE9MxmHzkUFyuO44BKPtCDc7GbdgX0jFaQ0/3tk=;
 b=BF7FLXm8wLkVIGGaGhVfhNpjNj4v15ImSykU60cOGnHZKzoe30Ofqpin
 wNuheDgJD9DR9kWLyoqFx0P781SNr94rmnUNFr4b5ZWOs0H4ARF6AVruK
 F6YonAnq84bnhuBSoKvF9jdPF/aXps9IaADVO9DgSjXc7Jb0yMKsHMo2n
 hKue0HmM9X2mC5ybpbmqPza+0hFA73xhy3d6aFSmfmYj8MnMzAkK0vWPA
 RzJnrx2igSAcamZrpRxzW6EQxrccQHqgYYgPNj9sWcJCzfJCpyaijrjg5
 Xy1LotQ/AULfwHeP9uWQ4I0rU6yRKM8SbjKyME0ujmyjOfrGRCJKvO5mj A==;
IronPort-SDR: EEwTmwlVZT+8v8vfUq+sAZBjleSWg4TW/HA3iItDzIxGe2nKN4BBOPUf1peEM4mDMHQ+kglgw6
 BxiV4MCONbh5rDXz/KmXj/M+usipzbA3y+1hTEMdIpS9kJe++BZpsrwavCDWhIdDqzLmFzpwY7
 4QkR5XENLLBH8S6nBooRDMP4nn1L4dHC5ary3QUlo7wE7kh18bwMTPDogDnqfb1xO9FUxyn8lt
 raiMvAgVBxhQx8ZqK7hjMQK0wftqxG5YcWWeJWN5EqXGI9JQKapcJU5RjY3LP/xuR7THfl7iIl
 lwc=
X-IronPort-AV: E=Sophos;i="5.64,435,1559491200"; d="scan'208";a="118308324"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 27 Aug 2019 07:33:27 +0800
IronPort-SDR: uVHwQtWM+Nv+JPOM7/PsC5iIdb1vBqpFq37BWGWlW1muoE4ZDWJ3/IdOZIjtF1hjehn99i6lcO
 O6SAOf3yV8Wvp9KxCNxg50SVd6gAk52C4QOmtAzsqMKUaT0mEgfg1jwdfhfArOjX+uMy8wmRpM
 YmfItZ8FbHFNUbQhdQCZ7btWqbs8Y6c9jaoEO2/Kgq0Gem3BgiXFfns1hFwewkHCn2DCnjgqmH
 ZFIo/AaFhmLXqEsWmpKRFyhrDFY0V5AR24zjEGB15qusrgO1H5fgwUG7xvZ2QDBWSetbt1jQSj
 uOoYiJ5xl6aTPMFC+Ai/jvg1
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 16:30:39 -0700
IronPort-SDR: 9Zd5jC5jSoaARYwrFGDSti3pbB6lV95YOCcz73lSwbo+WPdag1frpWP9ueLJKzk5qW84IRcSIg
 gqU0EwZtUo6rBWwZY4mBlFoz54S+JaxYhL6sn2qZS6QhKTGClyGt7aD6oIfJBA8957JeJOl1Ie
 V205cfZVDjfU2n4BhwdLOpNTeK44dXkO+whV6x/gR23XDg+ZgaA8Ie1ZPay3IEvj0sW7iiObOf
 g8vgyCN/8zcUz/VVPoP3ubRJPV0bIjatVXe5qrz6qC9NsZANvj2kau9OGfKxN7xQiSH5GRk7Fl
 eRw=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 26 Aug 2019 16:33:27 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [RFC PATCH 0/2] Add support for SBI version to 0.2 
Date: Mon, 26 Aug 2019 16:32:54 -0700
Message-Id: <20190826233256.32383-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_163334_385948_6C6A44F2 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Alan Kao <alankao@andestech.com>,
 Alexios Zavras <alexios.zavras@intel.com>, Anup Patel <anup@brainfault.org>,
 Palmer Dabbelt <palmer@sifive.com>, Mike Rapoport <rppt@linux.ibm.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Atish Patra <atish.patra@wdc.com>,
 Gary Guo <gary@garyguo.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-riscv@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch series aims to add support for SBI specification version
v0.2. It doesn't break compatibility with any v0.1 implementation.
Internally, all the v0.1 calls are just renamed to legacy to be in
sync with specification [1].

The patches for v0.2 support in OpenSBI are available at
http://lists.infradead.org/pipermail/opensbi/2019-August/000422.html

[1] https://github.com/riscv/riscv-sbi-doc/blob/master/riscv-sbi.adoc

Atish Patra (2):
RISC-V: Mark existing SBI as legacy SBI.
RISC-V: Add basic support for SBI v0.2

arch/riscv/include/asm/sbi.h | 109 +++++++++++++++++++++++++----------
arch/riscv/kernel/Makefile   |   1 +
arch/riscv/kernel/sbi.c      |  50 ++++++++++++++++
arch/riscv/kernel/setup.c    |   2 +
4 files changed, 131 insertions(+), 31 deletions(-)
create mode 100644 arch/riscv/kernel/sbi.c

--
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
