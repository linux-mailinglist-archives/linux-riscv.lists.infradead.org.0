Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B74E1254E3
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Dec 2019 22:39:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qOC3+RUoHtU++C1ezcsT7g+Us/8rlxALeXD9ycTTQhg=; b=FmdxTg12TYTXcH
	p+dGgnNl8M1ZVrUZR7KB/fKT7N0skGnYSgIDFy0vNv0PkjkMB/k8VrJBtJvY5EbdqKGGX5H/JHDKr
	+CRbOAqyc8Az5tgGjuiyviBIysbgtHNrxicEiKkkw8mdqUOU9Z+CRD3QQ4DHQOYOBlOYTYM3mswE0
	qwzwvH6kgfwa6BS0ju+DP80sYJnPCVshOaGiVN50FuPULFoi7ijYzo17xhb9lK9vJfoveiEnflxZs
	7pPb8bDQQP14lVJwKXLOpx2e1B76tk2z/62AxedBa43VPYkGctyABSDosiLz/Y0yzKr/QY/eJq/Ld
	aelDdNrGuG0HXlhZwLtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihh2o-00076i-2O; Wed, 18 Dec 2019 21:39:46 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihh2i-00072s-Pk
 for linux-riscv@lists.infradead.org; Wed, 18 Dec 2019 21:39:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1576705181; x=1608241181;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=v8HddCjwnP5FyVMQJWro7VQJAFHYljHP5zq5vtrPivM=;
 b=I5w9k4sVwujYKVyXoN4YZfpn0K2dh1X10Mg6Uq8Wrdh4FibJOVKWBD7R
 alUInHE0e3zGLorGJShlMkAr01+Q4K860WW6xh6nh+uhBP63jknfUO/D7
 gNX0DMKSurbJyB2MaDG8akB3I85NyIvaB3mwkeWA2S84oD9UrDaOk+srh
 ddog9weOLAr2RagjtS+5HJdGTC6SVdE/MizdIquYY2uNjUOd8xVwQs82g
 dqzFukInEDHy5o25oJJeIs2vfBDvLh2vCrCm07wgHfzMBkfMUCSRQD3/e
 7dtd+un1jT76rkwIcwxFfnmEKOPy4/ux9Sz97n5K15YMt8zQJMkyD0Y3O g==;
IronPort-SDR: +QBFaBPUdO8mYnK7LHkSCORD03LmPPrl/tXAWMKayXUuD7fpPUgk6XeVQCfV+hFT6+jGzpA8cR
 8au96oKRKi6VCMk+lpbz0MN+0lw52Sc76sJAe4fWclc2A5fdEcsGk9XTYj5jn7/zgQzmtGhKMf
 KvUpQBNb2YEK+v8FY+jSHd3TPtoblsoWYR6hmeUK81FeXaAHy6eU0sfN6UGDE1t7vC5nly8UXD
 SrVY50CGJ43kDDNVoxQyC1RGd9/5rI8Gjg9S4WhEwI9TwM6NtKTEb1kbNjrjMLY2Ls3469WfUj
 nRs=
X-IronPort-AV: E=Sophos;i="5.69,330,1571673600"; d="scan'208";a="130100625"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 19 Dec 2019 05:39:37 +0800
IronPort-SDR: sXi6tB8JdYlN1c/LXqWhPxYq/+S2kjl9UGu78qZDagdgLp8UajkKnZvn680bZfgYfFAy47bZ5g
 5jQf7qOeV/nV1RGBTNntxWswjfQPq+FdpJlIRVSEPBM4n/W7zi8NhiZEITP+Sv95l1lwiPW7P6
 2a1qWAfhmeap70YlTj6sscxD/pynQlfD21CEFA1vusIm3GciMVqTkKjsANamUH9BentJ4jCZ85
 q7Poqr11bmG7ERLvIytsx7tickObxdVt5YNVvUrUhQt5wvc72siEykPenhxn8rZ6UFPwFvEdta
 L+O8jq/MeCB+hpMwkFJ3ZxJZ
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 13:33:59 -0800
IronPort-SDR: i0GqJ4pvI0E4KdQ8DBhp9xHtwyGFGQIfO6P/FJjeFmfzdP4+6zCQRFX5AYhGSTLZSkfT0sy0Bh
 6Ouq1QqLqLUU0dEfGIlUFDGqsSt4QbKvxO4JyFujBxvAximyunKqIkXP0oAvRoppb2nOHVwXLl
 jzksbZwneDPELVbeOaKVlGmHycKvZoReXgz0YS7A0zc9XjPNaxdh/d8RUr9gsia9W3FHnyqZ5X
 lPljjLCnEuEog2k/j2o2tTWFqaHaPiBhOh0npZIdliOrX4ZcexdwgqDl3AhHMM+pJ1fn3aZ63l
 ego=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Dec 2019 13:39:37 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v6 0/5] Add support for SBI v0.2 
Date: Wed, 18 Dec 2019 13:39:13 -0800
Message-Id: <20191218213918.16676-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_133940_840947_24E4B7FA 
X-CRM114-Status: UNSURE (   8.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <anup@brainfault.org>,
 Atish Patra <atishp@atishpatra.org>, Mike Rapoport <rppt@linux.ibm.com>,
 Atish Patra <atish.patra@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>, linux-riscv@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The Supervisor Binary Interface(SBI) specification[1] now defines a
base extension that provides extendability to add future extensions
while maintaining backward compatibility with previous versions.
The new version is defined as 0.2 and older version is marked as 0.1.


This series adds support v0.2 and a unified calling convention
implementation between 0.1 and 0.2. It also add other SBI v0.2
functionality defined in [2]. The base support for SBI v0.2 is already
available in OpenSBI v0.5. This series needs additional patches[3] in
OpenSBI. 

Tested on both BBL, OpenSBI with/without the above patch series. 

[1] https://github.com/riscv/riscv-sbi-doc/blob/master/riscv-sbi.adoc
[2] https://github.com/riscv/riscv-sbi-doc/pull/27
[3] http://lists.infradead.org/pipermail/opensbi/2019-November/000738.html

Changes from v5->v6
1. Fixed few compilation issues around config.
2. Fixed hart mask generation issues for RFENCE & IPI extensions.

Changes from v4->v5
1. Fixed few minor comments related to static & inline.
2. Make sure that every patch is boot tested individually.

Changes from v3->v4.
1. Rebased on for-next.
2. Fixed issuses with checkpatch --strict.
3. Unfied all IPI/fence related functions.
4. Added Hfence related SBI calls.

Changes from v2->v3.
1. Moved v0.1 extensions to a new config.
2. Added support for relacement extensions of v0.1 extensions.

Changes from v1->v2
1. Removed the legacy calling convention.
2. Moved all SBI related calls to sbi.c.
3. Moved all SBI related macros to uapi.

Atish Patra (5):
RISC-V: Mark existing SBI as 0.1 SBI.
RISC-V: Add basic support for SBI v0.2
RISC-V: Add SBI v0.2 extension definitions
RISC-V: Introduce a new config for SBI v0.1
RISC-V: Implement new SBI v0.2 extensions

arch/riscv/Kconfig           |   6 +
arch/riscv/include/asm/sbi.h | 178 +++++++-----
arch/riscv/kernel/sbi.c      | 522 ++++++++++++++++++++++++++++++++++-
arch/riscv/kernel/setup.c    |   2 +
4 files changed, 635 insertions(+), 73 deletions(-)

--
2.24.0


