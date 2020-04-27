Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF791BAA23
	for <lists+linux-riscv@lfdr.de>; Mon, 27 Apr 2020 18:35:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=fbHM1UO8ZCsiegGn5ySxeV/75VUNG8WD+xMilKzGDK0=; b=CmqNcyNPuNeODT
	Ye7F2VlEUXy6kx78eQOr01DU0kiAYfTBTlRuJ9yn4i8152QDpvr0NYrZ+giRo3uascH92qO76a6sG
	k/oLuIWAvbYomjFddZ8i+3o8unS9/ntdAT6DiV/2lKYX537uiX3vXVk3eQEclvKWqvcbf2X93JOeb
	zJ18taLFrXF3Tj6sCRTkuYhLkec5Wob9GXRCEx6FBuBditMOe0YBRAJXEUbditEx2ETalPQAfqkni
	9LAjVbb0jDYZlW1DbUS6i6zGVEitwPpYZmj+kPpPev1KKSxAOWbB7Q+PLJiKL6OPB6xARMUGvRb9+
	kvkvEq3M7lOHcX+dcfyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT6ix-0002du-TR; Mon, 27 Apr 2020 16:35:15 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT6ia-0002U8-Go
 for linux-riscv@lists.infradead.org; Mon, 27 Apr 2020 16:34:53 +0000
Received: by mail-pf1-x441.google.com with SMTP id w65so9229641pfc.12
 for <linux-riscv@lists.infradead.org>; Mon, 27 Apr 2020 09:34:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=fbHM1UO8ZCsiegGn5ySxeV/75VUNG8WD+xMilKzGDK0=;
 b=AVHFyKBaT3lWtILdsn7lZbmxuZqLoXBACX+5oScB4Ni5aArwxsJ6qGE8HLSV8BTb9R
 jyR/oGhu7x83HmelJV7BfQxEM2p97lF9zL+Z0LTiB096JYKfSVi/FGfwL33jTP+aF5vZ
 SVdjrqIjF+5LJr4e70MVqjl+QwzGsm+G6laRPOuqao1Lt1ZDqTv+5iD/cvj2LaTOVuPh
 uOP931J9qGvclu8Vnku+rbLzIsfgJN4Emx5SOXDnhM+CLIrD07it7a3tkWSVQKgAiSE1
 xCC1NcUjETwzx28zzLY1K4/ftDdcYeB+2J/HlFl2wmr3lek0dzHuzdYKqpxnvO+nvhWw
 +Fng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=fbHM1UO8ZCsiegGn5ySxeV/75VUNG8WD+xMilKzGDK0=;
 b=NbI6Cslr6njCMGWHO9WGkl6NBtluxacp/uJCMHFeQ0b9KLT4EI7MZdhfU0xjqKwy6l
 91oG8Qx7bbF2y8V4Quj2fzh/okrr7Vy7qj0djKS4e0Khm/uDMFBBqO21cvfkcZ4T3ySE
 4faCPSnDPj8SCGk9SCO8+GMojKQqgqVhHzqHJw/Anndf2fmWcF9OppjtMoNRs2IQbP94
 NKjGpOKnGIdfNZWLM1VOs6rd2lgFaHfCmdqP69Vd4Ak18DssPIy/hBA4zRiC71KyYjLX
 wDCRX47quXRaG7WQeysVyuXEeUTkBBQ0dXl3yZ5ieXNjDVdH3te3wqVGAdIxLgIK0U4A
 dpAA==
X-Gm-Message-State: AGi0PuYIhf4qERSOAUfstvO6jddJWAXuAsF665+mXgKuLR54xJf0kLxa
 OEvKd0oaCEIylNq/AmT4QyMBcQ==
X-Google-Smtp-Source: APiQypLRWUHLrcl4eewb2MZpebmvrOe2d15ENGwSBTtBtqZ8Qsa654XlBZq7p87Qzgo0xDc/BXO4jQ==
X-Received: by 2002:a63:67c5:: with SMTP id
 b188mr23328255pgc.111.1588005290612; 
 Mon, 27 Apr 2020 09:34:50 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id 23sm11675960pjb.11.2020.04.27.09.34.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Apr 2020 09:34:49 -0700 (PDT)
Date: Mon, 27 Apr 2020 09:34:49 -0700 (PDT)
X-Google-Original-Date: Mon, 27 Apr 2020 09:34:46 PDT (-0700)
Subject: Re: [PATCH 0/3] Refactor patch text interfaces and mechanism
In-Reply-To: <cover.1587453338.git.zong.li@sifive.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: zong.li@sifive.com
Message-ID: <mhng-7876a56a-d387-46f1-9f54-95b18654a571@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_093452_580039_B3FB5D62 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 zong.li@sifive.com, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 21 Apr 2020 00:29:58 PDT (-0700), zong.li@sifive.com wrote:
> This patch set contains the difference from the newest strict memory
> permission. These changes are suggested by Masami Hiramatsu, including
> deprecating old style of kprobe annotation, lock protection and so on.
>
> Zong Li (3):
>   riscv: Remove the 'riscv_' prefix of function name
>   riscv: Use NOKPROBE_SYMBOL() instead of __krpobes annotation
>   riscv: Use text_mutex instead of patch_lock
>
>  arch/riscv/include/asm/patch.h |  4 +--
>  arch/riscv/kernel/ftrace.c     | 15 ++++++++++-
>  arch/riscv/kernel/patch.c      | 46 ++++++++++++++++++++--------------
>  3 files changed, 43 insertions(+), 22 deletions(-)

Thanks, this is on for-next.

