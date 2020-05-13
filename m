Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96EB81D20B8
	for <lists+linux-riscv@lfdr.de>; Wed, 13 May 2020 23:14:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=fQPXZp+IVSxbapxw+qChW71ug0twA5FFI0kmAhQ2wws=; b=EGJyIIqIAfHeBJ
	86ZNVBjTXcZafegERwtT7ABHtSkY9xtltcVAtk5ZdeJRKJGI3TkWhKwENbD4VzN3uxRpon0aC6OEU
	m3G3t6QxR5HNZUplqNtJcYSwZwloSgp3TpgVHmXk9mfHCIOFmBIaoRrbtB7IW8UAfHMw8Cekove+n
	EF/x+L0PXESYJ3NzojieVGEqPaFpn0gCI9SeOollmFBKWAfMHPS0LtBFrZNSui9uNz6UvlZWU6r2Z
	dofDzW/FwAqNUE719bKjpk1E8pdIN79IBdLA8fJyUbrsyPY/78cyKk8rofgh2zu4D4TjLoAKqYSHh
	34yzoc2EwU9zWBDAY8/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYyiG-0007Qi-0J; Wed, 13 May 2020 21:14:48 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYyiC-0007L9-5n
 for linux-riscv@lists.infradead.org; Wed, 13 May 2020 21:14:45 +0000
Received: by mail-pf1-x442.google.com with SMTP id n18so302736pfa.2
 for <linux-riscv@lists.infradead.org>; Wed, 13 May 2020 14:14:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=fQPXZp+IVSxbapxw+qChW71ug0twA5FFI0kmAhQ2wws=;
 b=IyJE95cx6fUjoUOtxi6G5B/lxWB5ibznMc114jMJGxspQQTGQMUcGMrMk2WtlJjWo0
 PkRMLu26n1UYSg4ZJQzWfqJ7zaU37jmlYr/pp1WY9YN3N2QmTNX47nlFsvKEEE/wBay8
 E6TU1Q/GiETUSfOG/ZfMVMaD6Dvu9KtwGVkG1DCZYtv3pZqp5HvJoZSzp8JP5RlNJdb2
 bXsgJwh1TPDAOXoNLeaq4xzFVxEPgO0msB9kSO5M7GB4uS6DMJfG0V0yZvUnApB37FMx
 gxZHaUdedYhJVo8ph2WaPlX+DJveMWvERWXTuEIBk/MtuSJSF2JAupOFOBmsFoTOB6H/
 q0Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=fQPXZp+IVSxbapxw+qChW71ug0twA5FFI0kmAhQ2wws=;
 b=Y8tkvFisAsZ5sdtPF5AtrfFG2YLUpSt+1rNcfgfwgHeLK+Yo16Ob9esU7FXM58P1Qz
 ajF/THNzgQBZEKCS8yKTIsUrvLySQMwLEZJuBLnVtWVF+z348KuDCIBwxl0qV83/D3iS
 YuZR+1O+aes1TLt2HkMrGruP/dH9Aecg6+6UNWbxGCe41/b4soy8Tg8MAOY62OJvAzDy
 xgkntK39N7FrHLaSJS7Loql6L72pb8DHR6wm75V+xHm7dQ+7uorEyvTuXlBGKhVabVCV
 X3mMaiT/4vAX1lFL33oBtXYYTTIARUbopz9ep9zldT/Ad3EQphr4d+WBWK7ajmblj2GR
 niRA==
X-Gm-Message-State: AOAM530AheXFaSdtq+izE4qvUGVVaUJgxzSS5dQ8Q6679hEczx+bM5NT
 2HSNCjsP6nb8DdIP2OSj2bswoQ==
X-Google-Smtp-Source: ABdhPJzdTa0U9kp2niBnjnx175RKaHvwsebr/DnTI6hq6UVnAjjZVxFFrmMdl9SIIYoqxiJIPtOgJg==
X-Received: by 2002:a62:1d48:: with SMTP id d69mr1161543pfd.102.1589404483317; 
 Wed, 13 May 2020 14:14:43 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id q134sm407114pfc.143.2020.05.13.14.14.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2020 14:14:42 -0700 (PDT)
Date: Wed, 13 May 2020 14:14:42 -0700 (PDT)
X-Google-Original-Date: Tue, 12 May 2020 16:33:48 PDT (-0700)
Subject: Re: [PATCH 01/10] riscv: Fix unmet direct dependencies built based on
 SOC_VIRT
In-Reply-To: <20200511022001.179767-2-wangkefeng.wang@huawei.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: wangkefeng.wang@huawei.com
Message-ID: <mhng-a9830a3c-320d-4a7a-8792-85d436b32182@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_141444_241650_96CF9E96 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Cc: wangkefeng.wang@huawei.com, aou@eecs.berkeley.edu,
 linux-kernel@vger.kernel.org, hulkci@huawei.com,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, 10 May 2020 19:19:52 PDT (-0700), wangkefeng.wang@huawei.com wrote:
> Fix unmet direct dependencies Warning and fix Kconfig indent.
>
> WARNING: unmet direct dependencies detected for POWER_RESET_SYSCON
>   Depends on [n]: POWER_RESET [=n] && OF [=y] && HAS_IOMEM [=y]
>   Selected by [y]:
>   - SOC_VIRT [=y]
>
> WARNING: unmet direct dependencies detected for POWER_RESET_SYSCON_POWEROFF
>   Depends on [n]: POWER_RESET [=n] && OF [=y] && HAS_IOMEM [=y]
>   Selected by [y]:
>   - SOC_VIRT [=y]
>
> WARNING: unmet direct dependencies detected for RTC_DRV_GOLDFISH
>   Depends on [n]: RTC_CLASS [=n] && OF [=y] && HAS_IOMEM [=y] && (GOLDFISH [=y] || COMPILE_TEST [=n])
>   Selected by [y]:
>   - SOC_VIRT [=y]
>
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
> ---
>  arch/riscv/Kconfig.socs | 17 +++++++++--------
>  1 file changed, 9 insertions(+), 8 deletions(-)
>
> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> index 4b2303ca20b9..6c88148f1b9b 100644
> --- a/arch/riscv/Kconfig.socs
> +++ b/arch/riscv/Kconfig.socs
> @@ -11,14 +11,15 @@ config SOC_SIFIVE
>  	  This enables support for SiFive SoC platform hardware.
>
>  config SOC_VIRT
> -       bool "QEMU Virt Machine"
> -       select POWER_RESET_SYSCON
> -       select POWER_RESET_SYSCON_POWEROFF
> -       select GOLDFISH
> -       select RTC_DRV_GOLDFISH
> -       select SIFIVE_PLIC
> -       help
> -         This enables support for QEMU Virt Machine.
> +	bool "QEMU Virt Machine"
> +	select POWER_RESET
> +	select POWER_RESET_SYSCON
> +	select POWER_RESET_SYSCON_POWEROFF
> +	select GOLDFISH
> +	select RTC_DRV_GOLDFISH if RTC_CLASS
> +	select SIFIVE_PLIC
> +	help
> +	  This enables support for QEMU Virt Machine.
>
>  config SOC_KENDRYTE
>  	bool "Kendryte K210 SoC"

This is another area we need to clean up (maybe converting from select to
imply?), but given this fixes likely build errors I'm going to take it onto
fixes.

Thanks!

