Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45854136B41
	for <lists+linux-riscv@lfdr.de>; Fri, 10 Jan 2020 11:46:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+1JMH3O1qhWg8U2E+XjrJRR+Lg3GG1qOiYki3Lbx/N0=; b=SOqM2Svbh2fr3dBIcNmBC8D3fm
	aRJBn2haJLhIZ2JnuU6S6MFlLxhYQs/lfw51CnHl0V4u9ZR2GMlTqgZtui/10wlX6w0gXfvEsXQor
	vwoT7XAkePueLK0CYvYZvp5hHzJ54P+E5CZguZJzZGA09U8XzarZyoDm49xYU2VsekiZ++FUlf+Cv
	v//SvsNlOMXs9oGn1QrDMqG1JyP1t1gxLC7Pk4/KBhf5AUVviFQSha8mFAtyh69E3v0aXRMtkt4FW
	R1XHGUnIjTN7do5CMLXZ25HDf2tTi3PzPT3eYCI+8AAhn0u9/wZJCcw5DQHTYAo20BUxCn3MxYR5f
	CP/Rktmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iproQ-0007LR-2L; Fri, 10 Jan 2020 10:46:42 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iproM-0007Jl-CY
 for linux-riscv@lists.infradead.org; Fri, 10 Jan 2020 10:46:40 +0000
Received: by mail-pg1-x542.google.com with SMTP id x7so813608pgl.11
 for <linux-riscv@lists.infradead.org>; Fri, 10 Jan 2020 02:46:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id;
 bh=+1JMH3O1qhWg8U2E+XjrJRR+Lg3GG1qOiYki3Lbx/N0=;
 b=PK5GOb+g1UwA8M3PiwFU2ug4hFEgL1/6tvc1NdbZfz8h4xV6lOxAojI9imoJXfaHud
 Hr0AeHsuKESAg78NwDRNUsNYX1dOG7LRoQoj+uANdWxPPT08to8mkR4Ivu6BNeZJYw/f
 Q4DGIGllx/551GGHCG67UG6KL3hl6oOYiymIGBwBohjypre3Qc/htOXhsa+fzQv2dsY3
 apkTBUKvNuJvh0kaZPZaEDGU6lCXf4sRLNDzLfcis4oXVYJDcq19uyh/3fc+3kqnv43D
 vwWt9VeeuWOyDLyN5jwb8DTINyCVpIl7/7ky4KVWbAugnFbjKH6hEZKdcQgU8467T1p3
 WA3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=+1JMH3O1qhWg8U2E+XjrJRR+Lg3GG1qOiYki3Lbx/N0=;
 b=FrPbG47Ovsd56N0wJrk6bs7hH5V7ojy4tAjsVTNn6a7uN8nSjO1uLnlGmbvFddudA+
 qOP9OzgXE7jLazX0T8nqZ1Va0shbzwvncuC0SSKvAVMYYL3lPWd7m9zOz+oyoskQxS0p
 d0DCIL3RD41nmbUghxIqmvt1CWIxdDaWpQNgu00RpFPlgPSqeB6NPuI9JAsXfK/P5zbG
 d0UJ8lwyvmc6bnqz63aJ6tnE1LLyCtHztOD14cyPMpzNgAj+bmULxJQUD8KYJ4BtYEDb
 KYwWz13JOmHlIRr4pceW3qHxNde1zy6VtiWt9b+TKcFlMtM2q8hobyPlQhuFWLCgpueZ
 OYfQ==
X-Gm-Message-State: APjAAAX6aNJga++r02ZzE0ci07Mj7a2jhNed9gg+WSnbxCxFMuL5sjLc
 aGKiGeY2rag0RR/bEaUpOg2vfg==
X-Google-Smtp-Source: APXvYqzopepT7mtIC0eNuWFQ0ZudFWgCJ/+AAjUfIW3P4MLVwsJdOvlttFMiAHZWi4JGlJL2KthQzQ==
X-Received: by 2002:a63:f202:: with SMTP id v2mr3530796pgh.420.1578653195226; 
 Fri, 10 Jan 2020 02:46:35 -0800 (PST)
Received: from greentime-VirtualBox.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id e10sm2590901pfj.7.2020.01.10.02.46.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Jan 2020 02:46:34 -0800 (PST)
From: Greentime Hu <greentime.hu@sifive.com>
To: greentime.hu@sifive.com, greentime@kernel.org, anup@brainfault.org,
 palmer@dabbelt.com, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, rppt@linux.ibm.com, gkulkarni@marvell.com,
 will@kernel.org, catalin.marinas@arm.com, mark.rutland@arm.com,
 paul.walmsley@sifive.com, hch@lst.de
Subject: [RFC PATCH v2 0/4] riscv: Add numa support for riscv64 platform
Date: Fri, 10 Jan 2020 18:46:23 +0800
Message-Id: <cover.1577694824.git.greentime.hu@sifive.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_024638_640003_36459B9E 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

riscv: Add numa support for riscv64 platform

This implementation is based on arm64 porting. It is tested with
qemu-system-riscv64, SiFive Unleashed board and OmniXtend FPGA platform.

There will be two nodes in /sys/devices/system/node if it is described in
dts and CONFIG_NUMA is enabled. We can use numastat/numactl/numademo to see
its status.

Changes in v2:
- split this patch to more patches to be more readable
- set cpu->hotplugable to 0 since it is not supported yet
- add more explanation for moving unflatten_device_tree() to paging_init()

Greentime Hu (4):
  riscv: Add support pte_protnone and pmd_protnone if
    CONFIG_NUMA_BALANCING
  riscv: Move unflatten_device_tree() to paging_init() because
    riscv_numa_init() needs the dt information.
  riscv: Use variable this_cpu instead of smp_processor_id()
  riscv: Add numa support for riscv64 platform

 arch/riscv/Kconfig               |  30 ++-
 arch/riscv/include/asm/mmzone.h  |  13 ++
 arch/riscv/include/asm/numa.h    |  46 ++++
 arch/riscv/include/asm/pci.h     |  10 +
 arch/riscv/include/asm/pgtable.h |  20 ++
 arch/riscv/kernel/setup.c        |  26 ++-
 arch/riscv/kernel/smpboot.c      |  20 +-
 arch/riscv/mm/Makefile           |   1 +
 arch/riscv/mm/init.c             |   3 +
 arch/riscv/mm/numa.c             | 372 +++++++++++++++++++++++++++++++
 10 files changed, 536 insertions(+), 5 deletions(-)
 create mode 100644 arch/riscv/include/asm/mmzone.h
 create mode 100644 arch/riscv/include/asm/numa.h
 create mode 100644 arch/riscv/mm/numa.c

-- 
2.17.1


