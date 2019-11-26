Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7189210A44F
	for <lists+linux-riscv@lfdr.de>; Tue, 26 Nov 2019 20:05:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sio/GKxnSeu1nU5pn3xVGS5BcrqA9lhjd7/MB4QOkKg=; b=UVEfjn/dKLiSaH
	Dqn3SUt0h2QHEQmKnmY4NAZeYFfv2EFBbO+dRsHg8xKKirpJXuVbQVS+ekb7nds55PbnStagVmzHt
	Iem0guKEylysihXx48iosr4LCn3zP5E1Hq9QjlIvmvIJ9TW2nWrV+pOVJZMbI2VunSZL71taODKQJ
	fiQLA/qXcKvM5lDITuWzoAycKj4fJnpJeHMTp0qymulb/HQlpnx5TUWH1bC17ZusS0jgleVg7L4Ge
	sE6SoXzf6X1I+aI6XoqzRbfdGEeHYbjvw8hVKEHTwGbDrfkk6Sch6VZn8MTRCFXoQ5JKGrM0FSL79
	QAYvhjUSettm1z7P4SVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZg9e-0005qK-5q; Tue, 26 Nov 2019 19:05:42 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZg9X-0005jc-Aq
 for linux-riscv@lists.infradead.org; Tue, 26 Nov 2019 19:05:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1574795135; x=1606331135;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2tYGSMNcs0UW5Lvpl6YDf0Tvze90VFHUzSCbHuotN/Y=;
 b=MipkQZewSrW8AdKOAfBV++00gSDRZjvWus3a+5nJ3MS+Sdw/Cg3GKwve
 hfbn9GXTjAIMWi9MZoF0sMcIgHg3Ua0bX/KDEpeW5UUeLOy5zXUPb+hFK
 t4jNKQMzt9KXQ2lSuGkBPtXVVcKyPDMJD+4ru5cmhmrEf9ZIu8dAQAsjh
 979K5N1oqg2C27oK6cLeOhLN84rewepEdjB9IETNt6PpSaEes3jMVuPoo
 Ur2pasy9o2RU1jrLcFhU7owLTf3z2vzoTVoGM/q4SoJl9iS+fvj7LyDwC
 8J12a6oqbOrbM3+kFEZwEqdZkeoONVRIKwvXZGaM3QJ3yxMIk8+d4XX/E A==;
IronPort-SDR: FgiL8CrB67Inixhr0vF+WZRnRwdmZGq9IJonjYHJkcNl9hc/gJbeUcKOwbfOoEpl8I4RCE1U/v
 AW3ZcqUV9qWHylKDbk8nEURsADC4azP0+L2n/0mcNgiPjhF/GiDoGdwvRtj7TWI2z4P9WY/1ri
 xM91FZwFZaBJzbwdbH5LgWKlYXO/7UhEzaOc703aSX1e8dw8BJVSTjVUFqTL5/ybrT20N6XFpD
 JxIuSvliDf4Rj4fVtO8nkydlUVN2fdCIiJwhyr5GYuxtiOH8FMCSUdmHROjplHt0XHaiL9GKOU
 ieQ=
X-IronPort-AV: E=Sophos;i="5.69,246,1571673600"; d="scan'208";a="124821881"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 27 Nov 2019 03:05:28 +0800
IronPort-SDR: tEWsCb+EtLdI82cMYiUijuU8yudHx0Dr/HkpYj7Oq8wWCOdpkcLrrmY5MMxKF2Jn/VtCxlq9TQ
 LLYoYeLUem+GRgECRZ+STeLTIR5uc4Pr0eNjQPZfmc36cTeZpKJc++LWFJPJaKaShNVJu9VKjl
 6qVBH/V/Hpc8AkQsnc/nR71fQt8TDeQITeucCAH9FHzvRJjgdTmHuzfuHC1vruSWbhQLy8rzyR
 6DtXBp2thXZdcQrXAUOhj6OGtFAXbCV/f+J6+MroeNr7RcSPrFSX1AWOwt/a/yzaOy2MGp8aWM
 raCazdjNpSX5NPm/rX6DZt/w
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2019 11:00:06 -0800
IronPort-SDR: nxYeJpflgf54V2H2m4tS5AoYPhejdMtOxwXGMEpLk0poTU5aapkCjQSswOYP3wGvbOLWQ0nyl5
 aJT1M7YX96RukqYxDqEvdZBsDgOneOpmX73Sg2wfzaZeZp2lWUDWiSDnZe1tOfrC73dmdkdMId
 3FJWqp+VkDFmthixKtXkAVdh+m2Rr+LnSxtc2Eciu/pVUaDXI4voO4M2ZTvr118Dq3qcFMMmNA
 6QYOx/VcZNJM4e6ZZzyGnQ5ph4Qb5dF53L8Wd4IhJ/8U7MTxHcRkUrG248nourw/3wnmgxK3Xe
 4N4=
WDCIronportException: Internal
Received: from usa003951.ad.shared (HELO yoda.hgst.com) ([10.86.50.226])
 by uls-op-cesaip02.wdc.com with ESMTP; 26 Nov 2019 11:05:28 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v5 0/4] Add support for SBI v0.2 
Date: Tue, 26 Nov 2019 11:04:59 -0800
Message-Id: <20191126190503.19303-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_110535_397818_DF922DA0 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Albert Ou <aou@eecs.berkeley.edu>,
 Alexios Zavras <alexios.zavras@intel.com>, Anup Patel <anup@brainfault.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Atish Patra <atish.patra@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 Mao Han <han_mao@c-sky.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

Changes from v4->v5
1. Fixed few minor comments related to static & inline.
2. Make sure that every patch is boot tested individually.

Changes from v3->v4.
1. Rebased on top of for-next.
2. Fixed issuses with checkpatch --strict.
3. Unfied all IPI/fence related functions.
4. Added Hfence related SBI calls.
5. Moved to function pointer based boot time switch between v01 and v02 calls.
Changes from v2->v3.
1. Moved v0.1 extensions to a new config.
2. Added support for relacement extensions of v0.1 extensions.

Changes from v1->v2
1. Removed the legacy calling convention.
2. Moved all SBI related calls to sbi.c.
3. Moved all SBI related macros to uapi.

Atish Patra (4):
RISC-V: Mark existing SBI as 0.1 SBI.
RISC-V: Add basic support for SBI v0.2
RISC-V: Introduce a new config for SBI v0.1
RISC-V: Implement new SBI v0.2 extensions

arch/riscv/Kconfig           |   6 +
arch/riscv/include/asm/sbi.h | 177 +++++++-----
arch/riscv/kernel/Makefile   |   1 +
arch/riscv/kernel/sbi.c      | 547 ++++++++++++++++++++++++++++++++++-
arch/riscv/kernel/setup.c    |   2 +
5 files changed, 660 insertions(+), 73 deletions(-)

--
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
