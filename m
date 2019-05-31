Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 608393162B
	for <lists+linux-riscv@lfdr.de>; Fri, 31 May 2019 22:35:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=2XSinaCKMcjX2q9+w5in+ckmdFc6FyLCmKq5k9FBEIE=; b=R2fOnaN6k0y6J+BhdB3vsvyxU
	J/kw9jX3Oo/IjjGS6L5Zx4AznIiY5eQhqiPMC7meN1t4BAdno9g2NqhqsujStGfSsDyCmf0Ji+6mw
	cJoSKzV4pHkpNnw9FJhFRX5M+VYZREyw88YnmnvX5HU1akuxwYM7zxjblw3vsSMGbVUHkDR0RbSU/
	NFbL0w1I3Kb5NtZ01DDvnSZG7fN0yL08IGeQWKi9wbEIsK9U1tNT5jK3yIREXsfIyo2secMwsxhdj
	Il9l6RiJA0v7/lZSHI5iqlU7CaNSp4FRU2xXSzxaAMXfc6G7Vx0EZMlN/+Pot76BbNYEfkvrfnsE7
	6kt20EGGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWoFh-0002mj-2r; Fri, 31 May 2019 20:35:49 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWoFd-0002lK-9H
 for linux-riscv@lists.infradead.org; Fri, 31 May 2019 20:35:46 +0000
Received: by mail-pg1-x541.google.com with SMTP id f25so4643928pgv.10
 for <linux-riscv@lists.infradead.org>; Fri, 31 May 2019 13:35:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=bkHPoc5lC5mW7wR1FrM44fNwP3Z1d5MLik27r7NZcj4=;
 b=bt2atdtE4k6OMppdFqAhmK/USH9XSeZWrsrRZq6i50JOXfbnxCoW50vFJGVRI7gDXD
 hzYHx23O3lK6EyC7T+pr+vU9GR5eASj5urGbI1YeN8qNBo9fOM2RJkcIZFkr/axPGzYE
 RMiViv869M/Y8ipTA+gg8M5NY1vennR5o2EE0bwC72cL8pE1KDJ6sL9UZTYVqvB7zRQ2
 kZpYqTkg1rvIEEILOBUEySytnpd0c+JCZnkIjZl4O4Mv2wIrVWNj+0Vspdn4OrJXlsRn
 HawvmZKVF4CFWyZwN+HeViDSEDfgiSf8bItEzJQMBfBok5UjSepb5mt49w2685BwUIhc
 bTnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=bkHPoc5lC5mW7wR1FrM44fNwP3Z1d5MLik27r7NZcj4=;
 b=pB1WbrD+MBXOUimmaxTE3Pdy09pq4mCdxJHNtMhPFltIRsBREDsMPxBrP9lNEgfDzz
 7wqRvBhx0e8WUc//dI4CxngHrNsyfyKqHwRRmZwfefahGA4KObq2gpZCH91U/T6p6Ys4
 timyCpv54Zc+g0J0j3RE++Nt0W19Q3FiN21RyKQLXEyW3PxVLyZK+qeVUEvUHIr7dm37
 CMbK/WT8gOxxdzIkCeLU9bRB/3DXtqc1p6cJdDgZmzZYKV4npdhZJMG5VbbJ9X9rHXrd
 Mpdn/enM3EBwphbzi412o3t2l4KTNj3c3gFt4w6v+HtsyQOykYCxLoL5yuvjZFwdoDeO
 yT/A==
X-Gm-Message-State: APjAAAVEPOjG5GUsRR0JvqJrKmk5eFd77O+WQgFK6W/9Na2xbR808Gt/
 hdXGvKajJ3RH8Mx7cgMO7T9qlw==
X-Google-Smtp-Source: APXvYqwkwhkqir+dMhYXAG70FpSw4GwU+es7vuPNj1W5tYEbhjZ2VubCjYq4QiP6LRydAmYkVQvEew==
X-Received: by 2002:aa7:90ce:: with SMTP id k14mr12487802pfk.239.1559334942443; 
 Fri, 31 May 2019 13:35:42 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id d2sm5841218pfh.115.2019.05.31.13.35.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 31 May 2019 13:35:41 -0700 (PDT)
Date: Fri, 31 May 2019 13:35:41 -0700 (PDT)
X-Google-Original-Date: Fri, 31 May 2019 13:31:53 PDT (-0700)
Subject: Re: [PATCH] RISC-V: defconfig: Enable NO_HZ_IDLE and HIGH_RES_TIMERS
In-Reply-To: <mvm8supd718.fsf@suse.de>
From: Palmer Dabbelt <palmer@sifive.com>
To: schwab@suse.de
Message-ID: <mhng-faba08ec-69a7-43b1-b2d7-c2e996751506@palmer-si-x1c4>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_133545_389313_F45898A3 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: aou@eecs.berkeley.edu, anup@brainfault.org, Anup.Patel@wdc.com,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@infradead.org>,
 Atish Patra <Atish.Patra@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 29 May 2019 01:00:35 PDT (-0700), schwab@suse.de wrote:
> On Mai 28 2019, Palmer Dabbelt <palmer@sifive.com> wrote:
>
>> My only issue here is testing: IIRC last time we tried this it ended up causing
>> trouble.
>
> I've been running kernels with these settings since the beginning, and
> never seen any trouble.

OK, I'm happy with it.

Reviewed-by: Palmer Dabbelt <palmer@sifive.com>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
