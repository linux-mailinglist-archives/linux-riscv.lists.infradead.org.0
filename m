Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D0117E517
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Mar 2020 17:56:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YKC9LNaZtyUY/Ff2305WgJwZtiH/JDgzAH1pAGoBoKg=; b=EaRHpDQCBeyj6F
	W2Aj11GWH9PyMaG9hAefp735c/HgjmdHxF+Bg1EK+BMRe1LX2NjibyjdY0eIElkwEyp8m0N5GHV68
	TBCmwm40GvXeGz3SgMFksYjrDkLSVfYX8wLIVTA35EUgm06qlmkkB6uD5Dr3bRvPP7ZXzVGwZ/l18
	/yuUtF1pWk4y58wydv6Or49MPUtaotPccvV7BW5jTTsJ/7rl65siFlVXjOHAXQK/Tafo9ZzlltvDJ
	lQC7UOetqoWDERecwjvjHI8X3ARxubgdqVW2oOCzUv0HH45H29rimlezgHGuJbwdZrQpsuQfW5uzx
	JM1q70QaPzXzAZ8K+jLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBLh4-0001lI-Da; Mon, 09 Mar 2020 16:55:54 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBLh1-0001kF-Pb
 for linux-riscv@lists.infradead.org; Mon, 09 Mar 2020 16:55:53 +0000
Received: by mail-pl1-x641.google.com with SMTP id g12so4225078plo.3
 for <linux-riscv@lists.infradead.org>; Mon, 09 Mar 2020 09:55:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YKC9LNaZtyUY/Ff2305WgJwZtiH/JDgzAH1pAGoBoKg=;
 b=mF9Mfr/83Mi60PJDifAAgN2akM9nEfNqk9CHt5jlMY4lyvbmaTza7qEmUrnkqWu/87
 sdoudwgpopvaiVKUindhwzWAUUFvQrua85KAxeRhVvmHl1bvM4dQqqf50bCU50nQ6at+
 Te7+0a/h9Pwf9iIdxhJPJvFd0U8Hpf01Z41NLsSlRvv+8P8FQ6xNa7lT+l0WlFh4XJbI
 IyXTvv105PQQC8xZuBcKi20Y2rC0AY5y12jIoyR5SyiISQBWoQ1KLl4iqZ2WJOYI7iZ1
 ZvVW1QUQiiV+piqh0Et7/UnA120i6gC0R2iNFkENXxIN1fRjl86xLib0acsjL1niES5X
 5bJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YKC9LNaZtyUY/Ff2305WgJwZtiH/JDgzAH1pAGoBoKg=;
 b=rQ/3gRiFZSQRlqEtYkX+0iGsS1CKwmYMJ9IOZusKeSGIeRwnsOXefzYFLOnBL+6aQE
 INLxBfmOBWC2QqqwCQ6Hdbno0P1iZ+bPWuGKmb7X81U4Zbbx0xl61AD0UbmJ1y29/lvg
 X49M4hsmmkjbweTn9dNw7oflWysOhg5O9FQEa1ZrDNmZS0jdXADX9RNvZDUfblmI5G6O
 y8rApyk4omwNEOiRoUPfMrhtxNZI5XZyVYTDamR5z/OvwFOzlEGz6XPPmZatZKOiPcqS
 YL7jMIXVVUn/S4EjZmv3ptkGuTMfl8JSMbui7LUKrr1t22hriohzlne4G36e88eqUVfG
 qA1w==
X-Gm-Message-State: ANhLgQ144i7IhzLqdD4ssK5YbcMpWLZtw8tpYhJ8x3bdGLAn2a6ZTDti
 YcB9CYXu4JQjec8Kn7u9nm6QkA==
X-Google-Smtp-Source: ADFU+vtfAu9oURnvRZb4wdaOx8JAoyHiyo47BPzGc96sPN8/2lneZdc9XKADgW+HjDDeUytpou7qnA==
X-Received: by 2002:a17:902:8d93:: with SMTP id
 v19mr16980723plo.327.1583772951184; 
 Mon, 09 Mar 2020 09:55:51 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id cm2sm104013pjb.23.2020.03.09.09.55.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Mar 2020 09:55:50 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/9] Support strict kernel memory permissions for security
Date: Tue, 10 Mar 2020 00:55:35 +0800
Message-Id: <cover.1583772574.git.zong.li@sifive.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_095551_879934_68DD1377 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The main purpose of this patch series is changing the kernel mapping permission
, make sure that code is not writeable, data is not executable, and read-only
data is neither writable nor executable.

This patch series also supports the relevant implementations such as
ARCH_HAS_SET_MEMORY, ARCH_HAS_SET_DIRECT_MAP,
ARCH_SUPPORTS_DEBUG_PAGEALLOC and DEBUG_WX.

Changes in v3:
 - Fix build error on nommu configuration. We already support nommu on
   RISC-V, so we should consider nommu case and test not only rv32/64,
   but also nommu.

Changes in v2:
 - Use _data to specify the start of data section with write permission.
 - Change ftrace patch text implementaion.
 - Separate DEBUG_WX patch to another patchset.

Zong Li (9):
  riscv: add ARCH_HAS_SET_MEMORY support
  riscv: add ARCH_HAS_SET_DIRECT_MAP support
  riscv: add ARCH_SUPPORTS_DEBUG_PAGEALLOC support
  riscv: move exception table immediately after RO_DATA
  riscv: add alignment for text, rodata and data sections
  riscv: add STRICT_KERNEL_RWX support
  riscv: add macro to get instruction length
  riscv: introduce interfaces to patch kernel code
  riscv: patch code by fixmap mapping

 arch/riscv/Kconfig                  |   6 +
 arch/riscv/include/asm/bug.h        |   8 ++
 arch/riscv/include/asm/fixmap.h     |   2 +
 arch/riscv/include/asm/patch.h      |  12 ++
 arch/riscv/include/asm/set_memory.h |  48 +++++++
 arch/riscv/kernel/Makefile          |   4 +-
 arch/riscv/kernel/ftrace.c          |  13 +-
 arch/riscv/kernel/patch.c           | 120 ++++++++++++++++++
 arch/riscv/kernel/traps.c           |   3 +-
 arch/riscv/kernel/vmlinux.lds.S     |  11 +-
 arch/riscv/mm/Makefile              |   2 +-
 arch/riscv/mm/init.c                |  44 +++++++
 arch/riscv/mm/pageattr.c            | 187 ++++++++++++++++++++++++++++
 13 files changed, 445 insertions(+), 15 deletions(-)
 create mode 100644 arch/riscv/include/asm/patch.h
 create mode 100644 arch/riscv/include/asm/set_memory.h
 create mode 100644 arch/riscv/kernel/patch.c
 create mode 100644 arch/riscv/mm/pageattr.c

-- 
2.25.1


