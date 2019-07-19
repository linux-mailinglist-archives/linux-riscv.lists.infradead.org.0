Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC826E304
	for <lists+linux-riscv@lfdr.de>; Fri, 19 Jul 2019 11:00:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4zxBjRl0n/MZ67dP3ecQStaugREOQquX71ypDSkn3fA=; b=AeO6SPnKBKXJ8c
	7wiTnZ9IyYdYbjFIwgXYkASz4FKlzKtW2MhFuPO8b912ATDm8PYwewVtVG3hkcvRqTu6bRUL16HK3
	JG49xEL71SLQx/P/nkgpyerqZyPYqYgUwIuOFMzbMIKgnfvIlfoTc4ggsFPdw4zEjcBWV4qecXT7j
	hn9GGCLJmNxmM4e4Ggigwsumwmuxc1YojI076WQghwxnRr1cI2F7M7mq+xIrT1LckuXh+pY7m9y+J
	q91XsBfjyIkZm1oGQk2VcsX1g5TKUmdH8LtMf8oSNnnO+GBW1obgFKQHtiE+kRqHhNj4bzxaf/Gis
	OmI7BFplMIfEs3/2+v1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoOk6-0005Wm-Rx; Fri, 19 Jul 2019 08:59:54 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoOk1-0005WA-LG
 for linux-riscv@lists.infradead.org; Fri, 19 Jul 2019 08:59:51 +0000
Received: by mail-wm1-x343.google.com with SMTP id a15so28012550wmj.5
 for <linux-riscv@lists.infradead.org>; Fri, 19 Jul 2019 01:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=brauner.io; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=r+mZG8DpAsPgWT5sar/21/BjX4up+4WpKJWqDr5y+XE=;
 b=UovNcYRJpNCwUpWYyK80hMB+LmsasMk/b+zRnOMrEiqyWDbVXt28ZRGBCmPPcZUN0Q
 /7jz/DscGGQ7KK1NVhsYrrZmsyJ1wT1ynx4YUOcbWknTuTYIitiIhSJYSjfxO7NDoc6A
 cYTtdySKxzcVDcyjoGRWTNZh5axkeqLWNaFU3JH3CGLkOMa8TXXFqu/1bhPnrwEP690/
 j7DnqohaO9uqFP/XnDXVak9aGhsnxhZrKERoM4ZBlXxPF8LvDVS/mfZ+LZ+SnCvaDFOj
 OBJIhRPnkIjaY5vjk8XEn2AqEibXwCokadCTrFNtJLDod4kk6C3EMdkFR9PqkEePJCcG
 HoOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=r+mZG8DpAsPgWT5sar/21/BjX4up+4WpKJWqDr5y+XE=;
 b=aLKC6fIS94eF2OwGXzCfSBEmRE8c19/DO3/7/zWojfmgU1M6dXzWYxmFJDNzURQ7qg
 f4UuKrxZyC7ZnxX/s0pjOYe67iFl0LOvgxJk0yy8EmX76EEylth3ch6fKdrI6QiXT6w3
 +OOoPZvye3yQdMPToKXuTjN7Abli4OiyCymefmyTJ5yldISM5XusLDrepIJsndelgye5
 nuC8fgue62IPOcIjjLnesFgJM5f0RFgWskRYoCMQ+wnwbU2EI3CmDHGsJbzkCPh3Vcz7
 joleF+wwOzrSAPpdaUq6lGJVrxT8QVhOCHaoKK/MmnW1sCVql1WfpRrE5h9kowYewIub
 XqTg==
X-Gm-Message-State: APjAAAXEZSv1k3Gy89PS1x35Zxj0f8CyYhlvtGep/PXoJSfESYOAo3u4
 z0oasPE73Obzze/8R4c0YzQ=
X-Google-Smtp-Source: APXvYqwNeo4Lm2KsUkZw2PBIJv7c22XTMebEqmZ6IGLFDVHBMaZWzxlIxEOLZBcK+t8KjqIA8Sw8Mg==
X-Received: by 2002:a1c:6555:: with SMTP id z82mr48409335wmb.129.1563526787404; 
 Fri, 19 Jul 2019 01:59:47 -0700 (PDT)
Received: from brauner.io ([81.92.17.140])
 by smtp.gmail.com with ESMTPSA id j17sm39177701wrb.35.2019.07.19.01.59.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 19 Jul 2019 01:59:46 -0700 (PDT)
Date: Fri, 19 Jul 2019 10:59:45 +0200
From: Christian Brauner <christian@brauner.io>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH] riscv: enable sys_clone3 syscall for rv64
Message-ID: <20190719085944.n4ypavxdlf6go4tl@brauner.io>
References: <alpine.DEB.2.21.9999.1907182118500.7083@viisi.sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.9999.1907182118500.7083@viisi.sifive.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_015949_883397_65E07B8B 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 09:20:01PM -0700, Paul Walmsley wrote:
> 
> Enable the sys_clone3 syscall for RV64.  We simply include the generic
> version.
> 
> Tested by running the program from
> 
>    https://lore.kernel.org/lkml/20190716130631.tohj4ub54md25dys@brauner.io/
> 
> and verifying that it completes successfully.
> 
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Christian Brauner <christian@brauner.io>

Thank you!

Acked-by: Christian Brauner <christian@brauner.io>

> ---
>  arch/riscv/include/uapi/asm/unistd.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/riscv/include/uapi/asm/unistd.h b/arch/riscv/include/uapi/asm/unistd.h
> index 0e2eeeb1fd27..13ce76cc5aff 100644
> --- a/arch/riscv/include/uapi/asm/unistd.h
> +++ b/arch/riscv/include/uapi/asm/unistd.h
> @@ -18,6 +18,7 @@
>  #ifdef __LP64__
>  #define __ARCH_WANT_NEW_STAT
>  #define __ARCH_WANT_SET_GET_RLIMIT
> +#define __ARCH_WANT_SYS_CLONE3
>  #endif /* __LP64__ */
>  
>  #include <asm-generic/unistd.h>
> -- 
> 2.22.0
> 

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
