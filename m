Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2A61D20BC
	for <lists+linux-riscv@lfdr.de>; Wed, 13 May 2020 23:15:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=KGA4CXXRZ8/Je2CCLkYTchCcwpryJHa1XuvGD7MbnTs=; b=BepbBbtGjyVXF4
	1QQUap2eJKdF1WHq74BJIPLTTGs1WPg2NuPvcCbA1aeY22YwPCbwXL+nNqqHX/PwILOajfbZY0UZ1
	GESkUtQ1OKV/e/Hxa7wwDdqZTWkh0aJgt2XXIHJU3wuixC2kV1pMROCzY6UoJuA+EnoMCA/Juapdq
	d6AkhK/kh1Hb3YLmuB9CXnt2yVDVxLxDmo+ZEamRy9MrIGeKM+3FhCsbgBXqr4c/43syPTVmG/DSe
	gJ0kPTnUFGoDTBXA/rM9eezgj1fPa/L6KL3Xkq5B3Wf7yZgpJuCRSnHvbeNDWQLduQ7AP1rfaorR9
	tihjCqhgneTB4rYYuwUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYyiS-0007jl-Vy; Wed, 13 May 2020 21:15:01 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYyiI-0007UR-8G
 for linux-riscv@lists.infradead.org; Wed, 13 May 2020 21:14:51 +0000
Received: by mail-pg1-x543.google.com with SMTP id p21so281130pgm.13
 for <linux-riscv@lists.infradead.org>; Wed, 13 May 2020 14:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=KGA4CXXRZ8/Je2CCLkYTchCcwpryJHa1XuvGD7MbnTs=;
 b=hdgebq1QzdoiPE5OXO3klO3RuLyH2yOzyaEmiSJbvnYjp5TERq+U9rK+UPv+CkSkwX
 oaI/AOw0+GoC4wgyR+Uk1DLjGMUOEPVRtxbwKGkV0hCL3a46U4RGaJjqZXwMxQ1FbJQu
 5WnLrUCQsPzUfx3aWzIuST7Blgm49Ai3R6gWbNbdEs22Tghwtzl5BusVLcTZMPZx1DFM
 KWZumrAr5Zwd04HvqZej9xpSXzCKnMH8ifu5RuNEw3PKouQU5viHcHgP4NQEr1cPXkAr
 QdLUGfrp8t1GPZkmAxG+MkB9gL/fKhav+T7Y18mXsuWQKfs4lPc1IAu3LDSj9BIeLJN3
 ++0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=KGA4CXXRZ8/Je2CCLkYTchCcwpryJHa1XuvGD7MbnTs=;
 b=HYylwOdw1frdUDrDTG/tLzVm3q8MGc5NfrRJD9HN9Rz4n3eRsTb/KWaUNxt7pcvWZt
 AfI0ol1DdoAu1C7EDL141xYbbxNP0DJ/fjzQPjyboQSfvUmifguyxt15b8rBjPtBoFFC
 AJbatCWu7Xkog0bBZPDq1QN62jAJRQUNOzWnxMP8LC7OPkWd8dKhojbtkbXLMqg3wsdW
 PyJQM+5UkWX+ajRN6YEzj5K8lHI1NLHqLbht6NZBjXBdztDIHSRjg1eHCUnRR+oWV9tL
 0S0IMNpwxloGsxv/yH4EIMe21H6ft05GZ3NeAETppb7SGPcsnSRY09rMCmhI7PYJ6QyO
 TP5Q==
X-Gm-Message-State: AOAM531HztsRA0xWW3Mps0jomKvDTBFnQ6sh2Kqx6BpePi1Of3y0TgFp
 NnvBBlsRzArM2ebNJfP1UE5/lA==
X-Google-Smtp-Source: ABdhPJwxTT/KVpeLEXIWg7AtVFwhKkLNQdSinQiSj6Ukse1P5d9HYvdXaIBuGS0aC5ypgLqDmULnxw==
X-Received: by 2002:a63:4f5c:: with SMTP id p28mr1142180pgl.412.1589404489005; 
 Wed, 13 May 2020 14:14:49 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id b1sm394170pfa.202.2020.05.13.14.14.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2020 14:14:48 -0700 (PDT)
Date: Wed, 13 May 2020 14:14:48 -0700 (PDT)
X-Google-Original-Date: Tue, 12 May 2020 18:10:31 PDT (-0700)
Subject: Re: [PATCH 00/10] riscv: make riscv build happier
In-Reply-To: <20200511022001.179767-1-wangkefeng.wang@huawei.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: wangkefeng.wang@huawei.com
Message-ID: <mhng-d7e9b8e8-2c97-490b-9eac-fd88c7a5a34d@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_141450_301116_111B593D 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
Cc: wangkefeng.wang@huawei.com, linux-riscv@lists.infradead.org,
 aou@eecs.berkeley.edu, linux-kernel@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, 10 May 2020 19:19:51 PDT (-0700), wangkefeng.wang@huawei.com wrote:
> When add RISCV arch to huawei build test, there are some build
> issue, let's fix them to make riscv build happier :)
>
> Those patches is rebased on next-20200508.
>
> Kefeng Wang (10):
>   riscv: Fix unmet direct dependencies built based on SOC_VIRT
>   riscv: stacktrace: Fix undefined reference to `walk_stackframe'
>   riscv: Add pgprot_writecombine/device and PAGE_SHARED defination if
>     NOMMU
>   riscv: Fix print_vm_layout build error if NOMMU
>   riscv: Disable ARCH_HAS_DEBUG_WX if NOMMU
>   riscv: Disable ARCH_HAS_DEBUG_VIRTUAL if NOMMU
>   riscv: Make SYS_SUPPORTS_HUGETLBFS depends on MMU
>   riscv: pgtable: Fix __kernel_map_pages build error if NOMMU
>   timer-riscv: Fix undefined riscv_time_val
>   riscv: mmiowb: Fix implicit declaration of function 'smp_processor_id'
>
>  arch/riscv/Kconfig                |  5 +++--
>  arch/riscv/Kconfig.socs           | 17 +++++++++--------
>  arch/riscv/include/asm/mmio.h     |  2 ++
>  arch/riscv/include/asm/mmiowb.h   |  1 +
>  arch/riscv/include/asm/pgtable.h  |  3 +++
>  arch/riscv/kernel/stacktrace.c    |  2 +-
>  arch/riscv/mm/init.c              |  2 +-
>  drivers/clocksource/timer-riscv.c |  1 +
>  8 files changed, 21 insertions(+), 12 deletions(-)

Unless I said otherwise in the patch reviews, these are all on fixes.

Thanks!

