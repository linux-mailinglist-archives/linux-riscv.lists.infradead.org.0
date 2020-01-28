Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB28D14AE15
	for <lists+linux-riscv@lfdr.de>; Tue, 28 Jan 2020 03:28:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h/dUZ06oeo3RpkYhKqwCVR3ubJl04xeFNbpUaY1kTf4=; b=nabrNphp2XzzWf
	oYwKGd+IYWd+6JjVJI5qZUywqy7TeVCoYIlTmrlwqH4RM64pgYoKQbHH0xbupdhiYi+TjvIvUpeO8
	kqqrSIIOhMipUDeFLcMxWV5no3qCLVpE7Inla+4NE1QMm9Xj/Gh+JWhs52PI4PSRZqBO95Okwo9ZU
	YZ5yYLT5png68eDKgOwWrmaOjNNY6nNvWTqKt/FjgOf+x5nUs6DK4I4J6SPkT0afiscSOyANqxImS
	9Sf5lZj0fg14gTTA1OhoG3NXSuecixC3gyw86hXUn9l1ngy59J2AgBaq6BR5qEPZNbKihFVWKwMct
	FIZfUTkhDyKqFmkCP+oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwGby-0005tR-2A; Tue, 28 Jan 2020 02:28:18 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwGbo-0005pr-N6
 for linux-riscv@lists.infradead.org; Tue, 28 Jan 2020 02:28:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1580178508; x=1611714508;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2nWGxJNu5AaNrPUR9Ax2z2U4KExulXxbW7We38PzOCE=;
 b=PQkIaEleBhvI1CMcGfGQ+NK1rS7w9c2exL6NaVCzKWHsmRYDX1CkcO7Q
 37LOXN8KzKE1o9hAwLQUDjef2uClYdCmCAKi14mnr4z0jOVCp4A0TKdUn
 WFnzIfUI9iTUNQ72xRyb4vQ9BvuJ504AeNAoKKKk5J/w9aADMEo9lE98h
 4GsKah0eRvKHA9qzy5Mxn+GAVljyqc/lYS0k4zXuIhPGapygW0wRnetCi
 G8YLLLxe5IgxUKDiAC0psBnAgeOygtjEy174v+HA2k/OjkWoIyu3yosHE
 IpMfVv381Dky0BKOxS8OV0GissDVHIhTPvt+zYRCCZQHTaC010sBiiRI+ Q==;
IronPort-SDR: +U2m44f6SCSKlbmTor+ZKpk2UusRi7A6Qjzg6nqAQp4x/h+7Jzt9gy9ZBJSf02jhcURwpPySmj
 ILTZ46kAYT6BEPUxaUKlGmi7ppEomNjRv6HZF5taqqrPz39Wm90gqYy7RYhUZhvDI9KQcBRI1Q
 RzKodw58fzT4gIynvqDvcT3aCyP3FPEMwTHnJ9v/hWKYjZOusZ8O1ND+eIbk2jJSwDv9K8YjUc
 X0JcuEPXOUYRbQK9H1nSRLll5mEg3KTydz/BH3MFE067sgeA9WPbjpotAloIbYxa73Jh5v3dhZ
 ZLo=
X-IronPort-AV: E=Sophos;i="5.70,372,1574092800"; d="scan'208";a="230237579"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 28 Jan 2020 10:28:26 +0800
IronPort-SDR: xH6AgWNNEJQRTpdew423oGj5bh+5jGvT+Mgt5pOr98UBZWE4Q19PFbRku8Qs9IepUEhsHt5mqo
 JANbElq9gmkqE0oUceL/YqRB73ibHrQnld4lvhDzgxbNXuq737u/xuJsYb5nBIOUL4X5pSWZSl
 yGR8qVusfiE+Y0x0ofHWCwwMsyWRVYwqfyDl8DXpNw00gh886jZ+BVv7lZQipPxCU4RLeUCevf
 FxEnyOlUAijUuoF4HwfFKJLkEPBhs4NjeCzFWfzgP98knbmetmKtBBkUSzH1ga9/pROQLiHtFF
 oqN747RvW8Y1lPMI6BwNZKPu
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 18:21:22 -0800
IronPort-SDR: 34puJ9SRsX/BV5rJp7+tSp1HSuXrV64X9EzBR/aH2/qxzQo7VHZYIgTjcmYQVPq7DmptsyF5CX
 zyK7biyrpqgd3yx9MAdeQPA7r1KYCciJRAkLxzb4KZZ2NY83A5V6woAC1bj9Pb23frcDLTCCfl
 BkEvKftbbaEdN86TIlmI0fbh+ivOizrvm09IFWYcznEi8CORqANXu0UhJOtSA8yqOFGsd2M9YQ
 GNlI8/0SghWhwwq+2QJR4kKRrMXxFdYOBrO2ROLhwuyap6cCawgS1D2t2G3bsZeDOGJZ1hAKyB
 cFs=
WDCIronportException: Internal
Received: from jedi-01.sdcorp.global.sandisk.com (HELO
 jedi-01.int.fusionio.com) ([10.11.143.218])
 by uls-op-cesaip01.wdc.com with ESMTP; 27 Jan 2020 18:28:07 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v7 00/10] Add support for SBI v0.2 and CPU hotplug
Date: Mon, 27 Jan 2020 18:27:27 -0800
Message-Id: <20200128022737.15371-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_182808_793059_FC3E6D22 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_ABUSE_MALW   Contains an abused malware URL listed in
 the Spamhaus DBL blocklist [URIs: infradead.org]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Thomas Gleixner <tglx@linutronix.de>,
 Kees Cook <keescook@chromium.org>, abner.chang@hpe.com,
 Vincent Chen <vincent.chen@sifive.com>, nickhu@andestech.com,
 Anup Patel <anup@brainfault.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Mike Rapoport <rppt@linux.ibm.com>,
 clin@suse.com, Atish Patra <atish.patra@wdc.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Greentime Hu <greentime.hu@sifive.com>, linux-riscv@lists.infradead.org,
 Borislav Petkov <bp@suse.de>, Palmer Dabbelt <palmer@dabbelt.com>,
 Mao Han <han_mao@c-sky.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The Supervisor Binary Interface(SBI) specification[1] now defines a
base extension that provides extendability to add future extensions
while maintaining backward compatibility with previous versions.
The new version is defined as 0.2 and older version is marked as 0.1.

This series adds support v0.2 and a unified calling convention
implementation between 0.1 and 0.2. It also add other SBI v0.2
functionality defined in [2]. The base support for SBI v0.2 is already
available in OpenSBI v0.5. It also adds SBI HSM extension and cpu-hotplug
support for RISC-V which requires additional patches[3] in OpenSBI.

[1] https://github.com/riscv/riscv-sbi-doc/blob/master/riscv-sbi.adoc
[2] https://github.com/riscv/riscv-sbi-doc/pull/27
[3] http://lists.infradead.org/pipermail/opensbi/2020-January/001050.html

The patches are also available in following github repositery.

OpenSBI     : https://github.com/atishp04/opensbi/tree/sbi_hsm_v1
Linux Kernel: https://github.com/atishp04/linux/tree/sbi_v0.2_v7

Changes from v6-v7:
1. Rebased on v5.5
2. Fixed few compilation issues for !CONFIG_SMP and !CONFIG_RISCV_SBI
3. Added SBI HSM extension
4. Add CPU hotplug support

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

Atish Patra (10):
RISC-V: Mark existing SBI as 0.1 SBI.
RISC-V: Add basic support for SBI v0.2
RISC-V: Add SBI v0.2 extension definitions
RISC-V: Introduce a new config for SBI v0.1
RISC-V: Implement new SBI v0.2 extensions
RISC-V: Add cpu_ops and modify default booting method
RISC-V: Move relocate and few other functions out of __init
RISC-V: Add SBI HSM extension
RISC-V: Add supported for ordered booting method using HSM
RISC-V: Support cpu hotplug

arch/riscv/Kconfig               |  18 +-
arch/riscv/include/asm/cpu_ops.h |  36 ++
arch/riscv/include/asm/sbi.h     | 197 +++++++----
arch/riscv/include/asm/smp.h     |  14 +
arch/riscv/kernel/Makefile       |   2 +
arch/riscv/kernel/cpu-hotplug.c  |  84 +++++
arch/riscv/kernel/cpu_ops.c      | 134 ++++++++
arch/riscv/kernel/head.S         |  98 ++++--
arch/riscv/kernel/sbi.c          | 574 ++++++++++++++++++++++++++++++-
arch/riscv/kernel/setup.c        |  34 +-
arch/riscv/kernel/smpboot.c      |  54 +--
arch/riscv/kernel/traps.c        |   2 +-
arch/riscv/kernel/vmlinux.lds.S  |   9 +-
13 files changed, 1128 insertions(+), 128 deletions(-)
create mode 100644 arch/riscv/include/asm/cpu_ops.h
create mode 100644 arch/riscv/kernel/cpu-hotplug.c
create mode 100644 arch/riscv/kernel/cpu_ops.c

--
2.24.0


