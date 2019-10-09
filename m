Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C25D1B58
	for <lists+linux-riscv@lfdr.de>; Thu, 10 Oct 2019 00:02:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=brWarFC740uqvSPkmyb/toDt7igAe4eM7Ur/9UKlndo=; b=o3uVWDNIc8gusk
	TEha4mP0FwafMLRbNh51YhzF1/4xYRG0B1NDeMnU9kdacZ1eO3tBTCipLw1kJx/KBkhczFavTXTdH
	t2JHgxixDwwihgspyGJfCMzXQuImzXEZuRy9xHAft1ybbX0JxI57P5XdrMmOX9PLkDOhhskvPKFle
	zJv2iP3Y7dRlLiOkG72A5uOejUfnVxR0xYq8X959H+yASClyuvyxe8DJT9DFyvV+v7u7CXuxllG5X
	HRLabKKPF5KY+Uyn0eDxpn9YailDaRG1NegOJ3YqFhIPWQyARlzdn2MuECXV1J3N/ChpRloWpcF1N
	xOXY6V/fR8gXku1/vvwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIK1l-0001vX-Vx; Wed, 09 Oct 2019 22:01:49 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIK1h-0001uV-U6
 for linux-riscv@lists.infradead.org; Wed, 09 Oct 2019 22:01:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1570658510; x=1602194510;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8Q4GE5gdbitQv1cQSotQR8lsgi17rKp/inu/3Yi4EBk=;
 b=MqUDfvL3YY6DdInqrFmr6m4L5UZeU+Iv8qOQvI4Qok5B1YAq/R7x+hBR
 3lVX3xP9vJ3NPjYxsbThyVtIL/OlAVgQFoDF+94aJ0em5Wls6To68nLQJ
 +ysXaG9brEVce10AofsIRhuR0aATpwH+tVXCwwklWXP+jnHBLD7TEuaxh
 VrZOaDfcdjsqblXyy+fAPRc5aTG6CM5vRKYYW/sVicyMRbCaFkzJCs33+
 VCsVe0XTo5JWjD/5QWnv4nMPchm6g0g8HSlZl8WyOKUUk5w4DjRR0dOii
 tAxYmntIFQbxIpgWDhv4pQBZjsZPr/4QLwuk+3sJiGZwXCedaGhFzEQjC Q==;
IronPort-SDR: 91MJpi0tdVH9sJJZ2lYBy3REkKkc9GFj/uLYsUNoDnlR4atzZmRh9tiJCBDNxwa8HAUdS67smF
 laSdm1lo2mQD7ysJlGPD0vyoI6CRPBOYPSVz0kyumOUFfTcZeM9dmuYJMQ8qGu5/zRCncZj4Y+
 iwnt3yVYYOLFc+A7QR5BB2PjiF9KxStS5Hpa2fdv/jLYEny06AgCrAAnl/OGSNRAfzC4XvVnR1
 9Kw4ICAzYG/74pxY0ODO2/c0dWJNE7J9xm3iJk1QF8abFyXlZvy2Yn/np2+zZXg9OscHklgAvn
 mVU=
X-IronPort-AV: E=Sophos;i="5.67,277,1566835200"; d="scan'208";a="221171273"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 10 Oct 2019 06:02:09 +0800
IronPort-SDR: b5IGAZD6iOQVS9/Y+GTOJFE/Wm+5G71pojpvTkiB4h4B9mev7eHSrgYszty7OixE62/ZOWMddD
 x9qgSo4eIH3KEV4evqlzy87AJGgoUPBozoVJ6IJSCC8CIm7Cq6P9W589Ensu759K6NUHCDwj3f
 yn5544Gm0P+BvB6dfTD1v7BwW4KR2qz7ja8kkFBO/kem5ou76Uu4WiaS9lwTR4XNfmUtZeGdHe
 GU6lDVKhGz/HB9T9JWLolFxacoBzfZSs+eIfsEw/bzOdGO5pFPbTHRNztPEfdC61Q/x5+MN+61
 +g0Dd3mUADaQRjjsp6Ifag6Y
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 14:57:27 -0700
IronPort-SDR: U0ejGo6VniJ5zhqevlDDzVhwPOQOhhjCa+WXrdc2T7aDNINglgGRDlroCFlTlv7RCW3A2zHgsv
 Eux2EkcMeLIj+8rx6Y5QEr6lTMhhp/365SoySWibBacGoChDa1K/3ekmmn0PuiLh5shqpIkdnn
 ZBwaR8JE8+9sLufWKX4Op2dHYl/7JZON6Z6UhObVnf3JR16yq/XYhWFvmeKWKoH7TJbYbAZmwo
 a1c7RyhpTOPENdH2C3VumKL0YNN4P5WACFBl2J8znLrIYtt3eMtWNbr+WDlvCDk60Pw6FkLRWc
 F3c=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 09 Oct 2019 15:01:29 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2  0/2] Cleanup isa string access and print 
Date: Wed,  9 Oct 2019 15:00:56 -0700
Message-Id: <20191009220058.24964-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_150146_005082_E97E1D9F 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Richard Fontana <rfontana@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmer@sifive.com>, Johan Hovold <johan@kernel.org>,
 Atish Patra <atish.patra@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Anup Patel <anup@brainfault.org>, linux-riscv@lists.infradead.org,
 Enrico Weigelt <info@metux.net>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This is a cleanup series addressing issues around isa string accesses
and prints. Patch 1 is actually a revised patch as a result of discussion
in the following thread.

http://lists.infradead.org/pipermail/linux-riscv/2019-September/006702.html

Patch 2 is an additional cleanup that tries to consolidate all isa
string related checks.

Changes from v1->v2
1. Used IS_ENABLED instead of #if defined
2. Adding additional warning statement incase of invalid isa string

Atish Patra (2):
RISC-V: Remove unsupported isa string info print
RISC-V: Consolidate isa correctness check

arch/riscv/include/asm/processor.h |  1 +
arch/riscv/kernel/cpu.c            | 86 ++++++++++++------------------
arch/riscv/kernel/cpufeature.c     |  4 +-
arch/riscv/kernel/smpboot.c        |  4 ++
4 files changed, 40 insertions(+), 55 deletions(-)

--
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
