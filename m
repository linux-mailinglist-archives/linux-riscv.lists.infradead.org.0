Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DAEE113A2E
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Dec 2019 04:03:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DDaxXfCxsiOyqMSO9KYcmqVtM/PNL1XNRneVF7PtEEk=; b=H+G4PTUcsB5tqCfOpLsk8SPZN
	UgH4Rna93Pq9qEeXj+8/Ewo3YeE37qzZXbao4MZK7ZqfPSpOTSoBrUNqLAkWnXVVvSjrTG4LvlHmy
	gV5YXh8EFlkg8Ptvp8NqqNP894bcUcpRqPHXxpqTWp85JX6SVwV3SusX7z7KFfP8KLl5HCYU2KQMj
	vllfZMwzZl0IsQ8xFfP8AWmr1OZj7zC+tRtaXD7PSGYyNg6e7TeaGXzHvKnGM5X+dbzjJiq1TyT6T
	lbBUaJoBZu1aJz6NRR7bTA2c4zuTFPz7T8pFqp7+vlcDjGsEahGYIiQEFlpbcLHiRZuokHfM32eYV
	Tbi4eBYBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ichQL-0001Qi-7p; Thu, 05 Dec 2019 03:03:25 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ichQI-0001QN-HI
 for linux-riscv@lists.infradead.org; Thu, 05 Dec 2019 03:03:23 +0000
Received: by mail-il1-x144.google.com with SMTP id f6so1616963ilh.9
 for <linux-riscv@lists.infradead.org>; Wed, 04 Dec 2019 19:03:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=DDaxXfCxsiOyqMSO9KYcmqVtM/PNL1XNRneVF7PtEEk=;
 b=QKySukuX+whyDlwTei1UZnZksz7c546kdE1Q+t6mhe/INeqiwSx/Pk/RJiJZbOtRd6
 giQJPsRdGlSjiHECuRruZEWSBvWnNW3YZlCwVezmQA4x9AlwZrO9YCUgsY/TV2VXEOgx
 JTqrpo8Yfz6IpPoASBfaTkbgkdymob1DtfD0OkGjk3yTa+AYbeMPbk3dZrtH7gwXiQP6
 2ucQMO3dMfiWQWK18vtoPyMjp2Tf3PEg5jXBOcvCbUdFQCKwYnu4yilSU5bcW5bM3esk
 pP7BWROiTfbyMWcefykLoXmV2DQOybkonJhJCb9BuhJmdJPjSIDaIk1TsdfjtplayCTZ
 WiKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=DDaxXfCxsiOyqMSO9KYcmqVtM/PNL1XNRneVF7PtEEk=;
 b=EwcmZjSKBuisr6sTu0MhEd7qPbD//y0ljWwhxY5EwO+IGTU1xJM5znFqUUcUdBfNut
 YNSYz08scNywOh8M5uPYVWRpQsDyb23XGlIe74V5B6Iub/jrNVzsR9UycWr1Zwo8SGab
 hjkt3KVX9cX0L36d+sYrMifDt92lGbuBIFlMaX3ME4r+Wizii4VUefzkmkKWESZyK6rt
 EcoFuyfvJGw6xuJw3zSJoCwNHgHqeASTYAIfLVMddqcCaYpYze93wOyrBzQF8+cuHQxr
 tiSfMKSCg7KGj3QDqM/WD7aNPAdbWcDVP0Q7NvNxd8AUPbSNUMgSBsyMO74OnxFcn33k
 kFfw==
X-Gm-Message-State: APjAAAXm71/cmJBF4bwzUgDQdsQuaSpnsHZJjtSP2UOGjYUYQclO3gwZ
 a51W8E/qqzbW9HtCPVfPAu+jvQ==
X-Google-Smtp-Source: APXvYqyNnDI4WPiQUe9ac+q6KSTTvsCXeGX7VU41qKjhR8914xo5CQA56RjP81NH34TxvX8az+BIKw==
X-Received: by 2002:a92:1b89:: with SMTP id f9mr6567185ill.122.1575515001113; 
 Wed, 04 Dec 2019 19:03:21 -0800 (PST)
Received: from localhost (67-0-26-4.albq.qwest.net. [67.0.26.4])
 by smtp.gmail.com with ESMTPSA id e1sm2365633ill.47.2019.12.04.19.03.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 19:03:20 -0800 (PST)
Date: Wed, 4 Dec 2019 19:03:19 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Anup Patel <Anup.Patel@wdc.com>
Subject: Re: [PATCH] RISC-V: Add debug defconfigs
In-Reply-To: <20191205005601.1559-1-anup.patel@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1912041859070.215427@viisi.sifive.com>
References: <20191205005601.1559-1-anup.patel@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_190322_582862_861C0E96 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <anup@brainfault.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 5 Dec 2019, Anup Patel wrote:

> Various Linux kernel DEBUG options have big performance impact
> so these should not be enabled in RISC-V normal defconfigs.
> 
> Instead we should have separate RISC-V debug defconfigs having
> these DEBUG options enabled. This way Linux RISC-V can build both
> non-debug and debug kernels separately.

I respect your point of view, but until the RISC-V kernel port is more 
mature, I personally am not planning to merge this patch, for reasons 
discussed in the defconfig patch descriptions and the subsequent pull 
request threads.

I'm sure we'll revisit this in the future to realign with the defconfig 
debug settings for more mature architecture ports - but my guess is that 
we'll probably avoid creating debug_defconfigs, since only S390 does that.


- Paul

