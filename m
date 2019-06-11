Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AABDB3CDA8
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Jun 2019 15:53:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oHUQXNaM1DnH1ptlbEZt/tSA9fBfgGMxrPm4qcEHWv8=; b=TPRwSoez1H5qP/
	0wqz9dFPsgYJYLu7vwRdaUMCmomrlbV/K6HkzkIXRY4MMIi4WeqsoOOKaKJnU8jFC5ObBY3JMhy6e
	hDQlnyJEI4a/fGtmAzjfe2OSB79dtvaepURs1kmCbovqE0XePLgupFm6ARgJ9qXFn4LbF+kC0V68o
	5tJpa8zVfDmuqBWilr5QkPAfVy1Z6VDwstXs4ytQQfGYue8SfbdS5j+ob//Mtc/ysY1MEzPVOc07A
	SYhY+5BOD9ev6gQ/wsONvHMT78szSfutS9DgDVVDGHohAwq/2Mgbs1rY7/NoFZvKiMsC1XVcWl4Si
	pA8Ndt1wauYHhlG+gsVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hahDT-0003O2-Bd; Tue, 11 Jun 2019 13:53:35 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hahDO-0003Ne-O3
 for linux-riscv@lists.infradead.org; Tue, 11 Jun 2019 13:53:32 +0000
Received: by mail-ed1-x544.google.com with SMTP id h9so20260089edr.0
 for <linux-riscv@lists.infradead.org>; Tue, 11 Jun 2019 06:53:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=6dF+YWuDYmkU0cAYkvspUDngLg2xWByBNLdk+B3Tlr8=;
 b=UKdn+8CYF1vrCre58CKHmIQSQaeqeLCbfX6g4Wqut3BSKbXTC0A9PkHWhhJpQXZG6Q
 iRt2Jh9QA2IbaigGo/VUSgPvH9ACD1S9gBJZiFoqxqpZbv00ebqEAHEdOGd7phuCVpGh
 RnSZi+HsgD2mo+/V8M1SL2vl3ei1hHWnugME3C35gyfDsoMnTOjV6j8JhTJe7IUpQJqp
 BXwg7E/iF4W3HZoapIoBd1WsCKWkiVWhwR6oOgk5qV4pRustzVz1C8wh5UTeY6rcfUzl
 4Q4zc2QGaoKuQG+8eh1zKoUzwdzeSXwYWrlautcBoOX3QOuOnVZdOHRdA+9/dIZyhWOC
 /ouQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=6dF+YWuDYmkU0cAYkvspUDngLg2xWByBNLdk+B3Tlr8=;
 b=EJ81plM74Li5oZvvOz6pnzuoIli1eum6tkXayZGLD5mN/l2SPJ7clE2pcOaxr5ZDFr
 1/ky2PbAQQyx91FXcpdK2BjmoWIeIloKtcXYZsaY20t94yAV2YQx+pgE0+WsgItMb05d
 1lh/qJ0UqU778yKvfgKmn+1KzvPfC8DTOBQiDiGcfhP6rDkBcIqKkOMdl+CrtONlVk7B
 TF7+lPVZR93U4goCPWuD7gzTY0y2BOW17Q9a915QBVH9Ikq9TYaDXjhEL1g2Bo4jmiZW
 uYQK1f7P5JE3Wyd/1hEcwAix+5r4aqVaVLV/iXlbkGWJlUa23ZGlzk8emBLfTVEvXwOO
 VAAg==
X-Gm-Message-State: APjAAAVJOpZfb0SZlTMK3uemZsOuNm8fRzQeR6Km3xKIlgPxNX85/UPI
 Ir4Tj+GAli+LXspre8NQYEV7nA==
X-Google-Smtp-Source: APXvYqwvrsRqPhOQ88+BYaIrgZSUw/ZqlgRDCTpKlw4eDeOh2VdEWtKOWj3TbJah+2FXAJL24NgyKQ==
X-Received: by 2002:a50:f49a:: with SMTP id s26mr8481488edm.191.1560261208966; 
 Tue, 11 Jun 2019 06:53:28 -0700 (PDT)
Received: from localhost (mpp-cp1-natpool-1-010.ethz.ch. [82.130.71.10])
 by smtp.gmail.com with ESMTPSA id z15sm2342508eja.62.2019.06.11.06.53.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 06:53:28 -0700 (PDT)
Date: Tue, 11 Jun 2019 06:53:27 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Andreas Schwab <schwab@suse.de>
Subject: Re: [PATCH] riscv: export flush_icache_all
In-Reply-To: <mvm7e9spggv.fsf@suse.de>
Message-ID: <alpine.DEB.2.21.9999.1906110648120.16050@viisi.sifive.com>
References: <mvm7e9spggv.fsf@suse.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_065330_849487_9D56A49B 
X-CRM114-Status: UNSURE (   6.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>,
 Christoph Hellwig <hch@lst.de>, Gary Guo <gary@garyguo.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 11 Jun 2019, Andreas Schwab wrote:

> Before 58de77545e53 ("riscv: move flush_icache_{all,mm} to cacheflush.c"),
> flush_icache_all was a macro, but it is used by a module:
> 
>   ERROR: "flush_icache_all" [drivers/misc/lkdtm/lkdtm.ko] undefined!
> 
> Signed-off-by: Andreas Schwab <schwab@suse.de>

Thanks, queued for v5.2-rc.  Added a "Fixes" line:

Fixes: 58de77545e53 ("riscv: move flush_icache_{all,mm} to cacheflush.c")


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
