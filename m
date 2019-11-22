Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86496107BAA
	for <lists+linux-riscv@lfdr.de>; Sat, 23 Nov 2019 00:53:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=nKnrDao2zUfJJSLtrorNPVEv//zdkbbdBuN3e2WX8jc=; b=oj3nLiR65luYSOoqPw3qEHDGu
	8wg55Kl/Ej94TpienuWjYKbFBW2ulzbYcQUgurh12kxIwOEnqBesyHWGVmK39xHzHcRZwhychjMBv
	sUFp23BoiODfGJxiOLNzdACoXhqEwbjc4gtI7Ng108USgTpENWIDI/p8rAhdenRrJA9fXkfNtDV1W
	dueEbWg90Palcv2BDdfiMYKKf0mTFDcqzzRwnJf8mIJE0iP94hQ6jY9G9OX/ixEeQVbHEn2GufH5I
	HDcrPxwTNEBD7Eb8pFzCGIQIxkTXtKVb7/gJf8P4hgyLnI6u+coM+yuHfvtGk6KmTjU6XE+la+Nm5
	wCylm3HUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYIjj-0004QB-TH; Fri, 22 Nov 2019 23:53:15 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYIjf-0004NW-7q
 for linux-riscv@lists.infradead.org; Fri, 22 Nov 2019 23:53:12 +0000
Received: by mail-pf1-x441.google.com with SMTP id i187so99457pfc.7
 for <linux-riscv@lists.infradead.org>; Fri, 22 Nov 2019 15:53:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=hGAas7kbfHEyduv+qdDvn9qOuG+QbmzDwbHASjA3jcU=;
 b=pj4DGDZ1nbrVcXZWpL8KUkxPGpmLOFPsaxSKDWTo+GotooYRqGqGPkpynSYiRdngOh
 cCSWFvHCasu+bQBjEmLAPbCzqtENh6C/41p+62l4bX73LDW5BeDSGCfvfZfDwNCVcWCE
 RoEcw+qj0Q6X1HCTdeIS32UGXPfXIhYm2dWIpVSwAZRld7EK7pAJeyKOvAJQGRmwuVXE
 VZIbtCsRCJv98LJatgyTpvsH06/PsYZB2O+F73gHe3lgy7eneevuukJLftYHJzCDcD2T
 0t4zwLp8L0q5L6d6XMdz9gLAs67stVDPsT1Q/f82FbrQUEgI/lZGUhS4QMHKZpEjABje
 HafA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=hGAas7kbfHEyduv+qdDvn9qOuG+QbmzDwbHASjA3jcU=;
 b=d6CD5XFKwqvBW9L2YfJ/AlFCCV9d4MfHR3NP7fijKC6kj7GhVcEBSVVmEWy0GeQ0/c
 c2QI7lVPlik1lzjxJEpnnmGGicC5f6nHuzoSdwJgHjFE79G0Ws7E2id7q+e8n66suqZ6
 gZKbrzk3PELW8+j5Xv8JC6hfrQJUIFldkcTu33j5IfMe43Ao6gCuxsFMn3yEFCE/MlZa
 FxNfDSa2bm+40QB+VUHh6SGVoLAP/nqbJEjtAS8Fgeyc3Cp2wlNsZ4MxdH5GtrUxUYpT
 AeZQZ6YB7PxqpivNJ665VmjzLnXEZYDTeXlK+6i4xK9wIKjHnghUmi89BMYh+cwnQmpE
 9xEA==
X-Gm-Message-State: APjAAAUJq2R27LS6Y03yeXnJfIN8HocntVmYduAotdbkIahq8RgcsBWc
 1nNCFnmNN1DE5Aj9xj4kH6JTLSuOLB8=
X-Google-Smtp-Source: APXvYqw99JsgPoFTCZ13835v1K37KM8rcO8/jaVQxczy+Przjc8a7wzamUt/r7KH8d14gd9sD7OBhA==
X-Received: by 2002:a62:4d43:: with SMTP id a64mr20955676pfb.197.1574466787744; 
 Fri, 22 Nov 2019 15:53:07 -0800 (PST)
Received: from localhost ([2620:15c:211:200:12cb:e51e:cbf0:6e3f])
 by smtp.gmail.com with ESMTPSA id j20sm8374170pff.182.2019.11.22.15.53.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 15:53:07 -0800 (PST)
Date: Fri, 22 Nov 2019 15:53:07 -0800 (PST)
X-Google-Original-Date: Fri, 22 Nov 2019 15:37:38 PST (-0800)
Subject: Re: [PATCH 2/2] riscv: defconfigs: enable more debugging options
In-Reply-To: <20191122225659.21876-3-paul.walmsley@sifive.com>
From: Palmer Dabbelt <palmerdabbelt@google.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
Message-ID: <mhng-8455ab79-f2b9-437d-81ed-814dd06328a4@palmerdabbelt.mtv.corp.google.com>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_155311_278332_E8A75354 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: -14.9 (--------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-14.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 22 Nov 2019 14:56:59 PST (-0800), Paul Walmsley wrote:
> Enable more debugging options in the RISC-V defconfigs to help kernel
> developers catch problems with patches earlier in the development
> cycle.
>
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> ---
>  arch/riscv/configs/defconfig      | 23 +++++++++++++++++++++++
>  arch/riscv/configs/rv32_defconfig | 23 +++++++++++++++++++++++
>  2 files changed, 46 insertions(+)
>
> diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
> index f0710d8f50cc..e2ff95cb3390 100644
> --- a/arch/riscv/configs/defconfig
> +++ b/arch/riscv/configs/defconfig
> @@ -101,4 +101,27 @@ CONFIG_CRYPTO_USER_API_HASH=y
>  CONFIG_CRYPTO_DEV_VIRTIO=y
>  CONFIG_PRINTK_TIME=y
>  CONFIG_DEBUG_FS=y
> +CONFIG_DEBUG_PAGEALLOC=y
> +CONFIG_DEBUG_VM=y
> +CONFIG_DEBUG_VM_PGFLAGS=y
> +CONFIG_DEBUG_MEMORY_INIT=y
> +CONFIG_DEBUG_PER_CPU_MAPS=y
> +CONFIG_SOFTLOCKUP_DETECTOR=y
> +CONFIG_WQ_WATCHDOG=y
> +CONFIG_SCHED_STACK_END_CHECK=y
> +CONFIG_DEBUG_TIMEKEEPING=y
> +CONFIG_DEBUG_RT_MUTEXES=y
> +CONFIG_DEBUG_SPINLOCK=y
> +CONFIG_DEBUG_MUTEXES=y
> +CONFIG_DEBUG_RWSEMS=y
> +CONFIG_DEBUG_ATOMIC_SLEEP=y
> +CONFIG_STACKTRACE=y
> +CONFIG_DEBUG_LIST=y
> +CONFIG_DEBUG_PLIST=y
> +CONFIG_DEBUG_SG=y
>  # CONFIG_RCU_TRACE is not set
> +CONFIG_RCU_EQS_DEBUG=y
> +CONFIG_DEBUG_BLOCK_EXT_DEVT=y
> +# CONFIG_FTRACE is not set
> +# CONFIG_RUNTIME_TESTING_MENU is not set
> +CONFIG_MEMTEST=y
> diff --git a/arch/riscv/configs/rv32_defconfig b/arch/riscv/configs/rv32_defconfig
> index bdec58e6c5f7..eb519407c841 100644
> --- a/arch/riscv/configs/rv32_defconfig
> +++ b/arch/riscv/configs/rv32_defconfig
> @@ -98,4 +98,27 @@ CONFIG_CRYPTO_USER_API_HASH=y
>  CONFIG_CRYPTO_DEV_VIRTIO=y
>  CONFIG_PRINTK_TIME=y
>  CONFIG_DEBUG_FS=y
> +CONFIG_DEBUG_PAGEALLOC=y
> +CONFIG_DEBUG_VM=y
> +CONFIG_DEBUG_VM_PGFLAGS=y
> +CONFIG_DEBUG_MEMORY_INIT=y
> +CONFIG_DEBUG_PER_CPU_MAPS=y
> +CONFIG_SOFTLOCKUP_DETECTOR=y
> +CONFIG_WQ_WATCHDOG=y
> +CONFIG_SCHED_STACK_END_CHECK=y
> +CONFIG_DEBUG_TIMEKEEPING=y
> +CONFIG_DEBUG_RT_MUTEXES=y
> +CONFIG_DEBUG_SPINLOCK=y
> +CONFIG_DEBUG_MUTEXES=y
> +CONFIG_DEBUG_RWSEMS=y
> +CONFIG_DEBUG_ATOMIC_SLEEP=y
> +CONFIG_STACKTRACE=y
> +CONFIG_DEBUG_LIST=y
> +CONFIG_DEBUG_PLIST=y
> +CONFIG_DEBUG_SG=y
>  # CONFIG_RCU_TRACE is not set
> +CONFIG_RCU_EQS_DEBUG=y
> +CONFIG_DEBUG_BLOCK_EXT_DEVT=y
> +# CONFIG_FTRACE is not set
> +# CONFIG_RUNTIME_TESTING_MENU is not set
> +CONFIG_MEMTEST=y

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
