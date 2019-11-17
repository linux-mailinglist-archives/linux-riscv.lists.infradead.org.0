Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 688C4FF796
	for <lists+linux-riscv@lfdr.de>; Sun, 17 Nov 2019 05:58:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w6MvrEcAxGBefUEbZmBCO4MwXt2z1EA75XlCTL0HT/Y=; b=TqW1YYwwZMGfpI
	M3X7BgpB0u6qjQGb2Xdrji4JT/1+QamRlzV7LU8x9dZpZVcT7HfP5/FZ1EZGVJtmzX+D9TETPQZtp
	Wh6HN28D080ADQxF0zeiKce7uM5cg2/ZA2SloVu6Kdd5YZDS54aSXdhOSBiPeva/ZcIfSAytv/gsN
	ymTh0OP5prOW+xRVMA4se9/79YFqNrzgjGx+xVkrZUPZHxUvw2rbCK0qIwojLJb6Kssm2RtCLC86j
	FC5Z4Ofw+VovsOR/C/OZSuC0XPwdWX410bnHCBijiLUj9AfN3RzjFBC5cw1FoZVoHNkKqjoyxGwDZ
	JmrbmONJ20Srtx6oPlCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWCdS-000848-Mv; Sun, 17 Nov 2019 04:58:06 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWCdP-00083F-59
 for linux-riscv@lists.infradead.org; Sun, 17 Nov 2019 04:58:05 +0000
Received: by mail-pg1-x543.google.com with SMTP id z24so7928663pgu.4
 for <linux-riscv@lists.infradead.org>; Sat, 16 Nov 2019 20:58:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=jEgcbLffHvInuudf1yxHrJupAep1eByuwcjffM5aOvc=;
 b=a/3JWGztuOAbEsz9msqcvd9nTRMEET4rlDcOuI2gbNGMsUc12lezwTIotPcZPOfSto
 WDi5TpG/Dhh3/PhkjsSe8K0caDhzTdWV9Ir3B2mTcbDgcN1gP5L8a2a/PS28n1mLqGIb
 E9XApBJBUbMjJDcX/eMUarB1Kq+0ywGsq056YIUuRivb8eah0lfGIw/Tv5L8De3BPQq/
 Sq3E34e12B05O3owK+5JN4t70jRFeU7aphHF66OaAXuF/z6vKcEyq4xax3RxrLBllcLa
 r32x8vNm73s5/CYifOwU370+nfyeFLqm6o67TT9FvgcfAJELoLuIZXY2W2eo5sVVAjrD
 vjEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=jEgcbLffHvInuudf1yxHrJupAep1eByuwcjffM5aOvc=;
 b=c340pXqIc344lQA0DTpESdWd8TPdXTipXg+NAseOvOE4q7uLouO95aW/Ey0O9L7aJz
 hZcSRs3gw5mAwPnx3j2LhZJmwNITwhBryBX1SwhKQIXgMf6tgVYcRGVA/Wkt8/c9uKes
 NSeKRzLZOFnTAsWqV8pQgdgK3H5Ix3CeAH08Be8t52qPL/6HqDCP6XoT7QexUrScfM23
 2cI9UJ+yAFAH18irETeGtVqhRzTUiFdoTcbdidrNXkevLTmWrgYeLA3c4kh6uUFuwK11
 1hxWKafn/ovN0dC0eHoHSJ7RZKWpJulkpFNXDt5yl622HI/Ejv6VcU2lNYugCnKIiF+m
 j86A==
X-Gm-Message-State: APjAAAWpaSTXvDMFJC+5MNiX1DVN/IolEeShhG+botdcvfJ3Nuh8p2LL
 pTRhJxYzjPmUgvnopGZqDpHbSQ==
X-Google-Smtp-Source: APXvYqw/trc/1O1AypH6tmLPpsAPixu8z/SqLT0y6hDUX8FDf31UAw3DYcCxUKNNRS/lE8JtSappkQ==
X-Received: by 2002:a63:1f08:: with SMTP id f8mr8309321pgf.145.1573966680566; 
 Sat, 16 Nov 2019 20:58:00 -0800 (PST)
Received: from localhost ([2600:1011:b043:4c6e:3bc6:3ed3:dc27:5ef3])
 by smtp.gmail.com with ESMTPSA id j20sm15436653pff.182.2019.11.16.20.57.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Nov 2019 20:58:00 -0800 (PST)
Date: Sat, 16 Nov 2019 20:57:55 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: dvyukov@google.com, glider@google.com, aryabinin@virtuozzo.com
Subject: Re: [PATCH v4 1/3] kasan: No KASAN's memmove check if archs don't
 have it.
In-Reply-To: <20191028024101.26655-2-nickhu@andestech.com>
Message-ID: <alpine.DEB.2.21.9999.1911162055490.21209@viisi.sifive.com>
References: <20191028024101.26655-1-nickhu@andestech.com>
 <20191028024101.26655-2-nickhu@andestech.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191116_205803_325280_4E2166B4 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: aou@eecs.berkeley.edu, alankao@andestech.com,
 Nick Hu <nickhu@andestech.com>, corbet@lwn.net, gregkh@linuxfoundation.org,
 palmer@sifive.com, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, linux-mm@kvack.org, atish.patra@wdc.com,
 Anup.Patel@wdc.com, green.hu@gmail.com, tglx@linutronix.de,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hello Andrey, Alexander, Dmitry,

On Mon, 28 Oct 2019, Nick Hu wrote:

> If archs don't have memmove then the C implementation from lib/string.c is used,
> and then it's instrumented by compiler. So there is no need to add KASAN's
> memmove to manual checks.
> 
> Signed-off-by: Nick Hu <nickhu@andestech.com>

If you're happy with this revision of this patch, could you please ack it 
so we can merge it as part of the RISC-V KASAN patch set? 

Or if you'd prefer to take this patch yourself, please let me know.


- Paul

> ---
>  mm/kasan/common.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/mm/kasan/common.c b/mm/kasan/common.c
> index 6814d6d6a023..897f9520bab3 100644
> --- a/mm/kasan/common.c
> +++ b/mm/kasan/common.c
> @@ -107,6 +107,7 @@ void *memset(void *addr, int c, size_t len)
>  	return __memset(addr, c, len);
>  }
>  
> +#ifdef __HAVE_ARCH_MEMMOVE
>  #undef memmove
>  void *memmove(void *dest, const void *src, size_t len)
>  {
> @@ -115,6 +116,7 @@ void *memmove(void *dest, const void *src, size_t len)
>  
>  	return __memmove(dest, src, len);
>  }
> +#endif
>  
>  #undef memcpy
>  void *memcpy(void *dest, const void *src, size_t len)
> -- 
> 2.17.0
> 
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
> 


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
