Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C051A1CE4
	for <lists+linux-riscv@lfdr.de>; Wed,  8 Apr 2020 09:57:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R5l9yaDnHPviFSInTMtO+H9cjGUVnhLTSkCrNG5sx0k=; b=rfVxqXS/drDuQq
	Ih7Dr+uBlAZTvroCwPxXmvrUt47AGQUy+6QY69MZTF+E12fcpoT+VGdiC4s7dLSk3NmJvuh0lgzx4
	OkAEuD/2DQTIAFXw9PN3KXetcRFNz2UgCOwmS2V/wPJRZrJ4TE0eZQdpn9hh7+Tnq8MQA8OPF3dLs
	fQuTgko53X6vjxY/V5Y8FaUr8OJPh3KTjGMy5GJEZzCJyOsAyUdP4mIJlqzt74QGjdIDTJfquBdH8
	RIMdUUZ0qDNDhuRD2TPvkN8vIInKRh3CVV0ILNzKl3FzNc0cIDoygwE3HhrtO1g+dpXOM49PMJ/ef
	HxfKZfNGS6Xj040Wrw9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM5aE-0007O9-Al; Wed, 08 Apr 2020 07:57:14 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM5aA-0007NP-9T
 for linux-riscv@lists.infradead.org; Wed, 08 Apr 2020 07:57:12 +0000
Received: by mail-pl1-x644.google.com with SMTP id v2so860385plp.9
 for <linux-riscv@lists.infradead.org>; Wed, 08 Apr 2020 00:57:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=R5l9yaDnHPviFSInTMtO+H9cjGUVnhLTSkCrNG5sx0k=;
 b=hsIE8Vof28DJJncFl3vY8jPdw0T1oKCjs5IiYyxl69aiOHSiFTj0bX1wenWPJ3kJRJ
 iIj07JLR0wgA6ZytV1SzqwxkatW3ZHpuqQIIFgLjLm9YXf1otQUmRJfab1OAWw59S6p2
 RgWZljcud7M27JOTSdcvfdaQd+QNYcK78ifndNxpxIe7UmfEP2abrFi0CblVWumtA3Fe
 bxHimMyQBCPLy92QZtfcnT6uyM6JDpXPllxJlmdPPfzmrKECAIIsIFelasO0muZUKILY
 TA0QJ0589Dv1hXf2bIXA4h4y3D99sHzzLVQa4oS+//ptAKKDuPF7i7l9DbG2rMNzjz7C
 jTyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=R5l9yaDnHPviFSInTMtO+H9cjGUVnhLTSkCrNG5sx0k=;
 b=W+yQE+fu423klUhsHCfbLlztJp+OhwaJAJ3equMI3ULEE04ezCYaqs6ODn6Sa85vC7
 7wFNTa/NJ1ZvFw2xFEGKORTNf/94eH99cGRWEdMcjbz6o7ftb1ORBnjpPlLP8DqCVau3
 xpDCEtLvSe21cjgZQtprB1zB5zFnf1X/+nMQAq4OAQAZN+BmVHoqjaTxxretRbEh9gDl
 vxNyUCOQHIA41rdAbtZJ/CXDDBuUQLRzH+/5GVxKk+1pLIl01c3QK3m2qlB/q+pCJlpn
 iV3gTPpgY40duEZA0YCJ7FIc+C4B7kfYnF4eA9eylMacds6XWqPGamlD8Xv9tg0ag4ta
 dxGw==
X-Gm-Message-State: AGi0PuYxcSOzx1lsh4L0PB6MUUnpWyBKrRPSsmmkeS4TT4HzNNzclrg4
 4HemeUsKnIegOblwZnTv3ZSnuw==
X-Google-Smtp-Source: APiQypIdPE+cKH1o87dImXX8C4kNxwaWuMVEsYtc+353GjjJ1cP5svGrxcEtvT6nMOrjhFMmd8aMUA==
X-Received: by 2002:a17:902:8e84:: with SMTP id
 bg4mr5738299plb.50.1586332629297; 
 Wed, 08 Apr 2020 00:57:09 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id d85sm485599pfd.157.2020.04.08.00.57.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 00:57:08 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 mhiramat@kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v5 0/9] Support strict kernel memory permissions for security
Date: Wed,  8 Apr 2020 15:56:55 +0800
Message-Id: <cover.1586332296.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_005710_852743_D7EFD88A 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The main purpose of this patch series is changing the kernel mapping permission
, make sure that code is not writeable, data is not executable, and read-only
data is neither writable nor executable.

This patch series also supports the relevant implementations such as
ARCH_HAS_SET_MEMORY, ARCH_HAS_SET_DIRECT_MAP,
ARCH_SUPPORTS_DEBUG_PAGEALLOC and DEBUG_WX.

Changes in v5:
 - Add lockdep_assert_held and more comments for text_mutex.

Changes in v4:
 - Use NOKPROBE_SYMBOL instead of __kprobe annotation
 - Use text_mutex instead of patch_lock
 - Remove 'riscv_' prefix of function name

Changes in v3:
 - Fix build error on nommu configuration. We already support nommu on
   RISC-V, so we should consider nommu case and test not only rv32/64,
   but also nommu.

Changes in v2:
 - Use _data to specify the start of data section with write permission.
 - Change ftrace patch text implementaion.
 - Separate DEBUG_WX patch to another patchset.

Zong Li (9):
  riscv: add macro to get instruction length
  riscv: introduce interfaces to patch kernel code
  riscv: patch code by fixmap mapping
  riscv: add ARCH_HAS_SET_MEMORY support
  riscv: add ARCH_HAS_SET_DIRECT_MAP support
  riscv: add ARCH_SUPPORTS_DEBUG_PAGEALLOC support
  riscv: move exception table immediately after RO_DATA
  riscv: add alignment for text, rodata and data sections
  riscv: add STRICT_KERNEL_RWX support

 arch/riscv/Kconfig                  |   6 +
 arch/riscv/include/asm/bug.h        |   8 ++
 arch/riscv/include/asm/fixmap.h     |   2 +
 arch/riscv/include/asm/patch.h      |  12 ++
 arch/riscv/include/asm/set_memory.h |  48 +++++++
 arch/riscv/kernel/Makefile          |   4 +-
 arch/riscv/kernel/ftrace.c          |  26 ++--
 arch/riscv/kernel/patch.c           | 128 +++++++++++++++++++
 arch/riscv/kernel/traps.c           |   3 +-
 arch/riscv/kernel/vmlinux.lds.S     |  11 +-
 arch/riscv/mm/Makefile              |   2 +-
 arch/riscv/mm/init.c                |  44 +++++++
 arch/riscv/mm/pageattr.c            | 187 ++++++++++++++++++++++++++++
 13 files changed, 466 insertions(+), 15 deletions(-)
 create mode 100644 arch/riscv/include/asm/patch.h
 create mode 100644 arch/riscv/include/asm/set_memory.h
 create mode 100644 arch/riscv/kernel/patch.c
 create mode 100644 arch/riscv/mm/pageattr.c

-- 
2.26.0


