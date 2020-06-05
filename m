Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A581EEE96
	for <lists+linux-riscv@lfdr.de>; Fri,  5 Jun 2020 02:01:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=xZdOd+qlY2QRwmTe112l24bUhmXHbEl+plH6oHERkT0=; b=hxUgB5MyF17+iC
	s4/qBbO/prS5Z45kR77jplFx1Vyx45Dr+LLC30vU0cuERGWpSF/qiS+4fE8U96aJSzI4nGzXQq9DY
	XrNzocoHyvLT3123Zgy2qUSH37BYqE4DQekPWKH9cuHok9o0gkJk6wn70YpGDqbUnYcRH2/xqxoD7
	v+1yVAbDBQL2FzTtLtDEJMhES30S4G8izPQgwQtC+3qBF/kUzC8QXtz+/8pk8obzIQWaUuZmPbT74
	ty37QgfMaxlkmTUtjOPAw5L/DgTS7TYYvlfdlZ5LGmvLzVo7tNoqQ6RJ4Z4G08qYUV7Er4DbKwjQ0
	GK3QR7Fz+i72Id30nt8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgznx-0006iL-5i; Fri, 05 Jun 2020 00:01:49 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgznt-0006gG-8r
 for linux-riscv@lists.infradead.org; Fri, 05 Jun 2020 00:01:46 +0000
Received: by mail-pf1-x442.google.com with SMTP id j1so3863827pfe.4
 for <linux-riscv@lists.infradead.org>; Thu, 04 Jun 2020 17:01:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=xZdOd+qlY2QRwmTe112l24bUhmXHbEl+plH6oHERkT0=;
 b=AVAJbEw+8SzEbBgb/DyV6PUyCKJwp2jB1suoSwTl8VD0MF5V0fKeKsgQdobihdyB5/
 J7+hzTEwKInrZZryqmy1JqDYidL2j1u+M85iMPHLr9RRvVYRupQqi1XObSqhG+FS0xZr
 DgkJbp/jR0w4JIDt7t4lU26qNOlNx6LwScZ9twfmleVNBJuBJnelRdJK+bNKlDjlDiZo
 yBQB7PH/lBsvsBAOkqx21GpIJKk8Y0loE6wjP21Bv7s6Lj29jozvypxNaROTexbNAtBP
 DnvL3nmAfsAvpmnZep5/g7ZdOpM0cuo2IYebVVZ0S8yFNSXBs6GDHERid3BxlwBZjasr
 ukVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=xZdOd+qlY2QRwmTe112l24bUhmXHbEl+plH6oHERkT0=;
 b=Rut/6RgyZCTHcSLtoJF1LWNjH1aUqxn2BP1552IDA+y1QX49YnqMxj5yQfkaVvawU3
 3iRLu2P1XJaqAVmFv2JzC6pOZdyfjmmLZ7S9zNA9XjSeW5sfb6W9ZDw1RuSG2JEplqie
 eDlTOJDsCa+yQ0Bn7bm4sxIIXbT9oTBa9ogXWPtIxLlHNUTRhDsIhyY1Beg1IZmU2Z8a
 hdWsBhtNKSaf+NOZ4lOnj0tvtnRkr/Ke2az/OJKvbe0HFtIobNJBr8RuZY9aTUKmI34w
 ZdWvLhgTlQZLwmnLmag1SqpgZahKwNBwAflxR7LI02LlGQrYx8iNeAb2bsST7FE8gnmJ
 T8hA==
X-Gm-Message-State: AOAM532UEAV7mN/Ode/Su+L6w36LGRlIgnNda2wKM0An7FjDueIPkbwj
 UaCgw4fv2SnXydQf7pfPNyU7YBL538mPLQ==
X-Google-Smtp-Source: ABdhPJwVDFsiRaHk0haBtydd8WFCLmIbWYllGL1INqp/6mVvVIso4x8fKUkKcTESPbIZva5kvdO07g==
X-Received: by 2002:a62:3545:: with SMTP id c66mr6891561pfa.223.1591315304390; 
 Thu, 04 Jun 2020 17:01:44 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id 128sm5380040pfd.114.2020.06.04.17.01.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 17:01:43 -0700 (PDT)
Date: Thu, 04 Jun 2020 17:01:43 -0700 (PDT)
X-Google-Original-Date: Thu, 04 Jun 2020 15:48:03 PDT (-0700)
Subject: Re: [PATCH 1/1] riscv: Select ARCH_SUPPORTS_ATOMIC_RMW by default
In-Reply-To: <20200602005428.18087-1-maochenxi@eswin.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: maochenxi@eswin.com
Message-ID: <mhng-d1b1b80d-95b9-445e-ab35-db1bf388e9ef@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_170145_305787_558849F4 
X-CRM114-Status: GOOD (  13.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-riscv@lists.infradead.org, aou@eecs.berkeley.edu, maochenxi@eswin.com,
 linux-kernel@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 01 Jun 2020 17:54:28 PDT (-0700), maochenxi@eswin.com wrote:
> Enable ARCH_SUPPORTS_ATOMIC_RMW by default to support
> osq_lock in mutex/rwsem locks.
> ---
>  arch/riscv/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index a31e1a41913a..cbdc605d20d9 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -68,6 +68,7 @@ config RISCV
>  	select ARCH_HAS_GCOV_PROFILE_ALL
>  	select HAVE_COPY_THREAD_TLS
>  	select HAVE_ARCH_KASAN if MMU && 64BIT
> +	select ARCH_SUPPORTS_ATOMIC_RMW
>
>  config ARCH_MMAP_RND_BITS_MIN
>  	default 18 if 64BIT

You need a Signed-off-by for all patches, even small ones like this.  I'm also
going to consider this a bit too large of a change to take during the merge
window: there's very little code, but it dramatically changes the behavior of
the system -- in other words, it's a 5.9 candidate, not a 5.8 one.

Thanks!

