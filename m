Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB23107BA9
	for <lists+linux-riscv@lfdr.de>; Sat, 23 Nov 2019 00:53:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=/3dB2is4tqGCO3LQ8qWy5W8RuM4hW9qvERk0nbb0T/k=; b=uCa5qub6KYuXvIsgU6Uu6SW+s
	av6pmLUsFYWLCdZeh2J22uwI/F6yHtUBtuqKdQMwOruKUjzFIn0AxROO/NYUJ/Np4eECoyw0NcAZW
	W38Qtsj6ZpZAhKv6p8cPfvAGjrsqhsIi8AYdxcZBs9+yT3D+M+LDFC31oCtJ0Q7C96jhtZYC79aUf
	Po0uexYciPna0sWzLQIOAKVGQeBGxcCQoIKAGiYL/WeHPnJ2tnzNRMueGqHKFDK0v+3prmTLf1oSk
	ryP/eQ21Uc/5DlNReAkTK9ngC6/yMsZT9UgO56J56UX2SaG6SSzQfaA5LPKxOkwXWYiydrsoBNpa2
	c7fkA+u5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYIji-0004Or-0d; Fri, 22 Nov 2019 23:53:14 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYIje-0004NV-Bh
 for linux-riscv@lists.infradead.org; Fri, 22 Nov 2019 23:53:11 +0000
Received: by mail-pl1-x641.google.com with SMTP id d7so3785708pls.3
 for <linux-riscv@lists.infradead.org>; Fri, 22 Nov 2019 15:53:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=/fgSJfDwWUJZk4qQCUjEfQX+RZkuy9vdX6awUKhe3pA=;
 b=slpniridXSVEw4nY4I5KMNh4NRv6/oWl+rZ0AG6M37LNSbSAPYsyHwFHowNhxVvbb7
 2IZcNdL2Jzv5Ecx2YnSIpEbvIiO8qOY+WnTZSq0IGMW0AmhuHjtW1Q6nkCxk/VLtjW9e
 iJHM71CPZQjaJd+YZcHy1GpU0DJyTGrYCA+PtaFk7ZFWfEkLapW2LTcBPAUENB0QApry
 UqCaqviFYqEwW5xvK07dMAdW+YHF1v021ATW//30WK++GzFN1njBfBeihAqZd8ywlIpp
 WJoi/6tucp6GN2V+Td1/SPOIM4fxBJPxuRfUvs8YrBCoPGSFmPms293tJoQ1pvbfpEf1
 B53w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=/fgSJfDwWUJZk4qQCUjEfQX+RZkuy9vdX6awUKhe3pA=;
 b=bbYIb4NUHlQ99OYEgaicxF3ysjC/4hs4IejJY7FqVAxIwhDUwcf9tnZPu0A3p1gjhg
 4TGNFKhmbKkJhwuXRgTab+00buSrFmnYrg5+zuA20Z5IBMlZ8dkAVR4W+V0sINTQ0F2I
 7n2O11TEid+246N1zsKI4bwjN+lNrqeR7XqjyqON9pQTg6NDkM/KCSEC05MkouusQVsY
 jQCBLHTnpb+5XQh36KyILWUjwHHsszj7mTmT8vQsAEvNSL+5fXj7TTTcv07oj3Eg8odX
 o/IZbr1Ylzc2yzsJpkVhFEp8MVh+cFeUseHi4nRY3cVBNa8ijA8ieFUirqWuW6fJipR2
 8JYA==
X-Gm-Message-State: APjAAAWfGmY4XVRkLfComn3cyrk2VNuBsKT7bJpvTrRmBipnRERgcUDE
 rocmdEt9hw1qhv3hQmFkQFyvallxffk=
X-Google-Smtp-Source: APXvYqyxKrpojY6n5qCm+4SIu4O0m88qkgp27+Y5i0/YgxpxjPstGnHC+gJZLE/Jn7clsUb9Abfs2w==
X-Received: by 2002:a17:902:8bc9:: with SMTP id
 r9mr15869159plo.319.1574466786535; 
 Fri, 22 Nov 2019 15:53:06 -0800 (PST)
Received: from localhost ([2620:15c:211:200:12cb:e51e:cbf0:6e3f])
 by smtp.gmail.com with ESMTPSA id l21sm13025pjt.28.2019.11.22.15.53.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 15:53:06 -0800 (PST)
Date: Fri, 22 Nov 2019 15:53:06 -0800 (PST)
X-Google-Original-Date: Fri, 22 Nov 2019 15:36:55 PST (-0800)
Subject: Re: [PATCH 1/2] riscv: defconfigs: enable debugfs
In-Reply-To: <20191122225659.21876-2-paul.walmsley@sifive.com>
From: Palmer Dabbelt <palmerdabbelt@google.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
Message-ID: <mhng-0f9ac780-ed6e-417b-8330-68bd11d76362@palmerdabbelt.mtv.corp.google.com>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_155310_412808_E59BC68E 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

On Fri, 22 Nov 2019 14:56:58 PST (-0800), Paul Walmsley wrote:
> debugfs is broadly useful, so enable it in the RISC-V defconfigs.
>
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> ---
>  arch/riscv/configs/defconfig      | 1 +
>  arch/riscv/configs/rv32_defconfig | 1 +
>  2 files changed, 2 insertions(+)
>
> diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
> index 420a0dbef386..f0710d8f50cc 100644
> --- a/arch/riscv/configs/defconfig
> +++ b/arch/riscv/configs/defconfig
> @@ -100,4 +100,5 @@ CONFIG_9P_FS=y
>  CONFIG_CRYPTO_USER_API_HASH=y
>  CONFIG_CRYPTO_DEV_VIRTIO=y
>  CONFIG_PRINTK_TIME=y
> +CONFIG_DEBUG_FS=y
>  # CONFIG_RCU_TRACE is not set
> diff --git a/arch/riscv/configs/rv32_defconfig b/arch/riscv/configs/rv32_defconfig
> index 87ee6e62b64b..bdec58e6c5f7 100644
> --- a/arch/riscv/configs/rv32_defconfig
> +++ b/arch/riscv/configs/rv32_defconfig
> @@ -97,4 +97,5 @@ CONFIG_9P_FS=y
>  CONFIG_CRYPTO_USER_API_HASH=y
>  CONFIG_CRYPTO_DEV_VIRTIO=y
>  CONFIG_PRINTK_TIME=y
> +CONFIG_DEBUG_FS=y
>  # CONFIG_RCU_TRACE is not set

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
