Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C7F1B1478
	for <lists+linux-riscv@lfdr.de>; Mon, 20 Apr 2020 20:27:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=3j7I+GwBPTWoE/gepMWkNd8iIKlyP+O5Cvl6ddDtBIE=; b=tiLruN/fwtO4SS
	vIHIz58v9Y0ZOulZRxio0dj3AWq7WOt4Na9d0fz2pWFmlQsXwoWULe/M7PKLPD8zUxWQBAo5UiNUA
	yxpxH2bnTGw/xC0mg3k3JrK5R1+5jjerDB68B3v6CApKR1x+nkcj1nCI8lpYiQdfwDsWsbZF8YITj
	gPSVaF3vW9oecT/nhidDHYQWg3AwkCPr39s9JdO8ePpNtthU31qTzj8WBcjWXpBQ8Eb0Hf7TA6cbi
	IF46bKgWxwG+4o/Y8zOD8N6/51rZCuNGEORf3wwiFLXOwzh0++XNGJ8x7s7nrTtBa7CALDmwiCo5C
	rE1zFohQ4L2IWQNI6dSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQb90-0000cJ-Hv; Mon, 20 Apr 2020 18:27:46 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQb8x-0000bG-DZ
 for linux-riscv@lists.infradead.org; Mon, 20 Apr 2020 18:27:44 +0000
Received: by mail-pg1-x544.google.com with SMTP id n16so5485709pgb.7
 for <linux-riscv@lists.infradead.org>; Mon, 20 Apr 2020 11:27:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=3j7I+GwBPTWoE/gepMWkNd8iIKlyP+O5Cvl6ddDtBIE=;
 b=poQyuPWbKffKCW0Q6nE3FUGjjj9O/c5xdGoYcp6Es73N4nBCmfEhbhBe9jR2mPg6Yt
 eZc8KCC3HNbKl6zWcLIWEBbW5fhYpWz5Tx3EoUtDDDWtr0sils+CHfTYihCyub8miFXp
 DPAkJSzeD/1MHdDblb7jequuMEp03aKqh6jLw5bvOFt6Wipo6KxdUpIFzTREmLR5rkGE
 Q40qX3K/Npci9Q3C5tWYBV7tywXIWei2BqN+55DoPd/dI/bYFqn4yECk6iYdWV3GCEHF
 vLq39hy0+y3aEEuJRCQEQ4KKMmPFSo/au3pJv9k4CoSJVMxlxRjuF6q0umQFRScR23p1
 JeeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=3j7I+GwBPTWoE/gepMWkNd8iIKlyP+O5Cvl6ddDtBIE=;
 b=BG/Lb1VljoLLcGBMdFP5kA/13EdXiEj21SO/kdjY21DUqfnswCkedX1DzRvyKr6xke
 Q9uHIXPFvJmEvk3bZDNoiqB+4nirF/RNS9dJp8mmRybLV4GRCGJ19UJtVV4DXvYiP2fB
 1WVHQFv4mKMprwBK0Rm1EdGmov4Tn3QzpSV+P8hzCDpdon71mNwuE9yf6rKX/44mfPN3
 BQ0ZV7dhpwN499Cn0jRfTSEcsGdN/kudjc4CW/B+lbsSDI+fvcAhJkAI08w+77hlfK+x
 oOybNWOQn9mSb/NwLfiXzQ+MLEmVYS5m5J6igmbtr9RWTWxB3ecuZqq4PnrvzyxQXC6l
 aSng==
X-Gm-Message-State: AGi0PuaMIMoKien4Nf7eK2jejKa30gtp1bziUWTZ6Zt0I9aakCetQLp7
 xBPAp6hUPUdqqss9++S1squAJg==
X-Google-Smtp-Source: APiQypLv50XPkHoI7VnUU30/Sn6iEsoPmL7NIe1/tSUt4S/CGGJSca5v0TQ7gj9mPAYJYoPVl9vRNw==
X-Received: by 2002:a63:62c1:: with SMTP id
 w184mr16558626pgb.296.1587407262240; 
 Mon, 20 Apr 2020 11:27:42 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id j7sm61576pjy.9.2020.04.20.11.27.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Apr 2020 11:27:40 -0700 (PDT)
Date: Mon, 20 Apr 2020 11:27:40 -0700 (PDT)
X-Google-Original-Date: Mon, 20 Apr 2020 11:23:07 PDT (-0700)
Subject: Re: [PATCH v5 0/9] Support strict kernel memory permissions for
 security
In-Reply-To: <cover.1586332296.git.zong.li@sifive.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: zong.li@sifive.com
Message-ID: <mhng-103aea95-cf25-47c5-8e8d-56534f40c570@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_112743_479719_0E86D376 
X-CRM114-Status: GOOD (  19.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: aou@eecs.berkeley.edu, linux-kernel@vger.kernel.org, mhiramat@kernel.org,
 zong.li@sifive.com, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 08 Apr 2020 00:56:55 PDT (-0700), zong.li@sifive.com wrote:
> The main purpose of this patch series is changing the kernel mapping permission
> , make sure that code is not writeable, data is not executable, and read-only
> data is neither writable nor executable.
>
> This patch series also supports the relevant implementations such as
> ARCH_HAS_SET_MEMORY, ARCH_HAS_SET_DIRECT_MAP,
> ARCH_SUPPORTS_DEBUG_PAGEALLOC and DEBUG_WX.
>
> Changes in v5:
>  - Add lockdep_assert_held and more comments for text_mutex.
>
> Changes in v4:
>  - Use NOKPROBE_SYMBOL instead of __kprobe annotation
>  - Use text_mutex instead of patch_lock
>  - Remove 'riscv_' prefix of function name
>
> Changes in v3:
>  - Fix build error on nommu configuration. We already support nommu on
>    RISC-V, so we should consider nommu case and test not only rv32/64,
>    but also nommu.
>
> Changes in v2:
>  - Use _data to specify the start of data section with write permission.
>  - Change ftrace patch text implementaion.
>  - Separate DEBUG_WX patch to another patchset.
>
> Zong Li (9):
>   riscv: add macro to get instruction length
>   riscv: introduce interfaces to patch kernel code
>   riscv: patch code by fixmap mapping
>   riscv: add ARCH_HAS_SET_MEMORY support
>   riscv: add ARCH_HAS_SET_DIRECT_MAP support
>   riscv: add ARCH_SUPPORTS_DEBUG_PAGEALLOC support
>   riscv: move exception table immediately after RO_DATA
>   riscv: add alignment for text, rodata and data sections
>   riscv: add STRICT_KERNEL_RWX support
>
>  arch/riscv/Kconfig                  |   6 +
>  arch/riscv/include/asm/bug.h        |   8 ++
>  arch/riscv/include/asm/fixmap.h     |   2 +
>  arch/riscv/include/asm/patch.h      |  12 ++
>  arch/riscv/include/asm/set_memory.h |  48 +++++++
>  arch/riscv/kernel/Makefile          |   4 +-
>  arch/riscv/kernel/ftrace.c          |  26 ++--
>  arch/riscv/kernel/patch.c           | 128 +++++++++++++++++++
>  arch/riscv/kernel/traps.c           |   3 +-
>  arch/riscv/kernel/vmlinux.lds.S     |  11 +-
>  arch/riscv/mm/Makefile              |   2 +-
>  arch/riscv/mm/init.c                |  44 +++++++
>  arch/riscv/mm/pageattr.c            | 187 ++++++++++++++++++++++++++++
>  13 files changed, 466 insertions(+), 15 deletions(-)
>  create mode 100644 arch/riscv/include/asm/patch.h
>  create mode 100644 arch/riscv/include/asm/set_memory.h
>  create mode 100644 arch/riscv/kernel/patch.c
>  create mode 100644 arch/riscv/mm/pageattr.c

Looks like there are quite a few conflicts here.  Do you mind re-spinning the
patch set for me?  It's a bit early to spin off for-next right now so there
might be some more conflicts, but hopefully not too many.

Thanks!

