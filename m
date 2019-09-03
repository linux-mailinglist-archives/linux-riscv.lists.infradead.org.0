Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F12A6A72B4
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Sep 2019 20:47:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=2CtdNGKMTWubldhOZ4pok2SVhUVUWoZ9Bt9zctzqfzg=; b=oozLU16d30hAsrw7ps2wM9YGY
	vQG/v2/jovGCWU8vtWRYdbs8v3CNdrx2FuUK/AgIl+UtwRjwDIKziWn58lbgwAZkEQz5mbWx0dowO
	5xB6/rE+ldaD66pS0VBRUx0mA4UL1PSeGscKjyXiYRGYDzBQwYX+uz7D87FO9/1XFiqVR0/5q0eeC
	7iIbFpzBsWeVXV/2PcTR7gBgbs70mtv5KtOFZGp+5fQ4dI/39xRmJ/okSy7aiyFV9sKTPP4NRntqB
	+ihZ0YLGivr/hpMi1qgqLNChRQT9Eiu+pnIlWCq3Bjy9Sw0aRIFey34hBGaE+2WulntU/eK3EZuNC
	0S7tyiWCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5DpE-0003Pb-TL; Tue, 03 Sep 2019 18:46:45 +0000
Received: from mail-pl1-f196.google.com ([209.85.214.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5DpB-0003PA-78
 for linux-riscv@lists.infradead.org; Tue, 03 Sep 2019 18:46:43 +0000
Received: by mail-pl1-f196.google.com with SMTP id f19so8264164plr.3
 for <linux-riscv@lists.infradead.org>; Tue, 03 Sep 2019 11:46:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=CBNMvEvTH6fteyKe3dhcwxwaI+eSweZc/Rmi9UUtZqg=;
 b=DpF+QdF1a2CEJmpU3jf7N8Edy1ZmFow3LpJZoOjkBfABJCgzhkBwuN7V/P/77z/2cK
 KFwOigFUZpE+GvvwwJWD4DPKnTK5L/GU7pIo1XUuq52TMDkdS/xoSqqIJbr+dTVabU6q
 XWgGbfNYanokIz2GecdwGInh1+GZOnty3MunbCAN2ejUDiQME+pkUyI97Z7+epB5bbL4
 2ZVLQpqlm1tLBIXv4TfA29NO65lcfdbtRW/MHLtRbMfWiw3EZ6AvOyHOgNAYTqk2Z7Wn
 wrdcjKHoRxeFAQv4YHovY9cYjsZGEm0RTbhlnoVfO4pnXJ1+zAptey/uMt6kf6Nv7KfX
 WeJg==
X-Gm-Message-State: APjAAAWcuJi48ExI71m4nyukLYDEB0geBhYJgdhGbOcS0xb06yXyurvP
 j7MITKZTruMadu91cnVil4z1DeFK/sU=
X-Google-Smtp-Source: APXvYqz2ZIExs6TLVGt0Pf3oPJazthOQ8psykOgL+APPpqBfGYaggL0Br/h+TL2pwXAqmY1s+bK46Q==
X-Received: by 2002:a17:902:7892:: with SMTP id
 q18mr35014792pll.206.1567536393600; 
 Tue, 03 Sep 2019 11:46:33 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id 127sm1982403pfw.6.2019.09.03.11.46.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2019 11:46:33 -0700 (PDT)
Date: Tue, 03 Sep 2019 11:46:33 -0700 (PDT)
X-Google-Original-Date: Tue, 03 Sep 2019 11:41:01 PDT (-0700)
Subject: Re: [PATCH 8/8] riscv: ignore the SYS_RISCV_FLUSH_ICACHE_LOCAL flag
In-Reply-To: <20190828060942.GA21592@lst.de>
From: Palmer Dabbelt <palmer@sifive.com>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <mhng-6070e215-c109-4d92-abbc-e77a2178657d@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_114641_260120_38957C75 
X-CRM114-Status: GOOD (  19.52  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.196 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-riscv@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 27 Aug 2019 23:09:42 PDT (-0700), Christoph Hellwig wrote:
> On Tue, Aug 27, 2019 at 06:10:33PM -0700, Palmer Dabbelt wrote:
>> This is meant to perform a context-local flush, not a cpu-local flush.  The
>> whole point here is that userspace doesn't know anything about CPUs, just
>> contexts -- that's why we have this deferred flush mechanism.  I think the
>> logic is complicated but sound, and removing this will almost certainly
>> lead to huge performance degradation.
>
> All calls to flush_icache_mm are local to the context.  Take a look at
> what the current code does:
>
>  - set all bits in context.icache_stale_mask
>  - clear the current cpu from context.icache_stale_mask
>  - flush the cpu local icache
>  - create a local others mask containing every cpu running the context
>    except for the current one
>  - now if others is empty OR the local flag is set don't do anything
>    but a memory barrier, else flush the other cpus
>
>>
>> Maybe I'm missing something, what is the specific issue?
>
> The issue is that the current implementation of
> SYS_RISCV_FLUSH_ICACHE_LOCAL only flushes the icache of the currently
> running core, which is an interface that can't be used correctly.

This is used by userspace as a thread-local icache barrier: there's an 
immediate fence on the current hart, and one will be executed before that 
thread makes it to userspace on another hart.  As far as I can tell this is 
implemented correctly but not optimally: there's always a fence, but we emit an 
unnecessary fence when a different thread in the same context is scheduled on a 
different hart.

I suppose maybe we should attach the local fence mask to a task_struct instead of an 
mm_struct, which would trade off an extra load in the scheduler (to check both 
places) or more fences in the global case (on every thread getting scheduled) 
for fewer fences in the local case.  I feel like it's not really worth worrying 
about this for now.

The construct seems reasonable to me.

> riscv_flush_icache without that flag on the other handle already just
> flushes the caches for the cpus that run the current context, and then
> causes a deferred flush if the context gets run on another cpu
> eventually.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
