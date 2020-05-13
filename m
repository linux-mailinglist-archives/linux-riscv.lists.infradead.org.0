Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A330F1D20B9
	for <lists+linux-riscv@lfdr.de>; Wed, 13 May 2020 23:14:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=4+xSC9bsrPwFy66uuVLgjjuRRD6A290/AIOo8xDaczg=; b=hJIYUxB7PnQXVW
	maa0q1oIxaG1Nn6x0eIs1FFzCabXb4hZsjSCLSuW7bKpYq6ZvZWGXIv5Z1LZYSQc++dkuioCsPhQ3
	JCeQ8R2k/p8cZ0SwoGXS0Oe0KHRvhmZCw52fR6zKt7DL5O6RGmV7ED4Sncjo/RyPhi+jWhKhUZRkf
	CdLF7pbKG+qkOlKvPxErVlSrrP6lTJMQO6ow2+4f/JzdpmoXCNxJN02ozGYrT2gl7Q3IqHBWlTpxi
	92ZrU9tSRytjUoIJW6m/TYx9keFEeB3u7MK2oVfpVHJusK3FuHZl2Nbf19kZpc/mOLxWrVVVoo/Ju
	jasCC+c+JbvnolwWPZTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYyiH-0007Rp-Nk; Wed, 13 May 2020 21:14:49 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYyiD-0007NJ-Hb
 for linux-riscv@lists.infradead.org; Wed, 13 May 2020 21:14:46 +0000
Received: by mail-pf1-x442.google.com with SMTP id z1so300243pfn.3
 for <linux-riscv@lists.infradead.org>; Wed, 13 May 2020 14:14:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=4+xSC9bsrPwFy66uuVLgjjuRRD6A290/AIOo8xDaczg=;
 b=y8cC9UPVb/LpnhQcVv3DQFfsyP9xOVUr34YZ+rgvlk99pXbXiAUjEcmTk8rR7JecUn
 M7rvujyKfX417pYnhlyjtXXOldBKCB1N556dFyZCrzVWE+xZryoMCpZJn1E8hIcK7fdD
 Au/+nFpMUwtAcdhITxyFuxMMICq4X61/OfFY/U8vH9KpeCoRXvpbNKYQkjqSKI/FlrLU
 aUmMUM7QiDsqi37mnJpRcRHI0mbPEED0leDzLP+YI3vRpHfa7K2UAG29jR6fuvl7uqLm
 6MppLl25kjw42fDXTZxcaABI24Sx+SBO9/JwehhR8v0438+XHgHtlQ0FNi3xjuCRCoDW
 Jbvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=4+xSC9bsrPwFy66uuVLgjjuRRD6A290/AIOo8xDaczg=;
 b=g8J/fIwaZvgIKBUbA4IwJAQDj8YmcEoaR2vI0Fq1ovssRrRBkUtOS0QN0pHLMbOjLr
 TTkLzo05RkkYVzf/13IuSl6JainRAbY8bREx3auFKJUotHjuX4zrg4PXiD3Bpmyadkdc
 2m0IoSd2XZw3yz+MfptboJVSA4koJHJocfQOctNVjVFOiSRycxJ8RKxF0Tp5E/hFIPz/
 6kB5rc3kIUnlLvb3I6UswNNf64Ph5/C5bALari8P6Xw6OqvwkeZajpjIZN1bpP4+a7k8
 sUJACGbN6YRMb8KHgDKlxAPzhVT4NydosMy+Y5ooywdaemufC1h12oWL8w+lahA3W/Ed
 IduQ==
X-Gm-Message-State: AOAM531V1JqOdUbAbNak2U5ezHyG3+AZZguzrxruXS7wPyW25n3wG+Ry
 23BLmIdK2R43sm4LDLyLiFLeceoikw4=
X-Google-Smtp-Source: ABdhPJyl/k6oTH3iTiwWC8Vrw7cGObT1MXaEUnLbNBG6QRWSf0056vKV/N4CX2dWIylHpqdUNJcyXw==
X-Received: by 2002:a63:e602:: with SMTP id g2mr1138569pgh.380.1589404484887; 
 Wed, 13 May 2020 14:14:44 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id w73sm408511pfd.113.2020.05.13.14.14.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2020 14:14:44 -0700 (PDT)
Date: Wed, 13 May 2020 14:14:44 -0700 (PDT)
X-Google-Original-Date: Tue, 12 May 2020 17:21:48 PDT (-0700)
Subject: Re: [PATCH 05/10] riscv: Disable ARCH_HAS_DEBUG_WX if NOMMU
In-Reply-To: <20200511022001.179767-6-wangkefeng.wang@huawei.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: wangkefeng.wang@huawei.com
Message-ID: <mhng-f65a8b91-0836-4927-a39f-8167cd3ec67f@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_141445_584207_F70129FD 
X-CRM114-Status: GOOD (  13.91  )
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

On Sun, 10 May 2020 19:19:56 PDT (-0700), wangkefeng.wang@huawei.com wrote:
> DEBUG_WX is only useful when MMU enabled, diable it if nommu
> and fix the build error.
>
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>
> ---
>  arch/riscv/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 78f30f2fdd51..7da0a36a8df0 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -69,7 +69,7 @@ config RISCV
>  	select HAVE_ARCH_KASAN if MMU && 64BIT
>  	select HAVE_ARCH_KGDB
>  	select HAVE_ARCH_KGDB_QXFER_PKT
> -	select ARCH_HAS_DEBUG_WX
> +	select ARCH_HAS_DEBUG_WX if MMU
>
>  config ARCH_MMAP_RND_BITS_MIN
>  	default 18 if 64BIT

Looks like this depends on something that isn't in any of my trees yet.

