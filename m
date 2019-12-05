Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8C1114545
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Dec 2019 18:01:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YZZKoeme5xqeP330LDusDo42nmGku+QMxsQ4s+f0hSs=; b=RwKZAkoZybe4FdDk+dxa/V8FY
	ngKJBqSIDW6ZzHYbhlczYNKLmXtp5vlGJrXzi6tdK7P+miomrBkkzRZ/2QFb6wEqZ8vsmPsQcly0b
	OhtZjaGrJVqf/DYXiLBFjkdYKAi9ZzN0GU7IJcbncC3wtqNVKJvdKzJF2t2aaDG2nuwmdEbksfPdp
	7iGFT/Szl1G6fLeWhX4E2gBwy2Iw3biKeaBRls/t0MXgStUJsd4UdJU+Eo87rdXYGd5n1HJRWeRXw
	xmCwxdfDO6fhKAxfSiv3USsvbqNRYCk2tIkYKIgFCE7zvrJV+I0xP7rD3+PBwRP1Ni3j2DHBUe3ZO
	rmcIA/FjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icuV5-0004km-8M; Thu, 05 Dec 2019 17:01:11 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icuV1-0004ib-HB
 for linux-riscv@lists.infradead.org; Thu, 05 Dec 2019 17:01:08 +0000
Received: by mail-io1-xd41.google.com with SMTP id z26so4330180iot.8
 for <linux-riscv@lists.infradead.org>; Thu, 05 Dec 2019 09:01:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=YZZKoeme5xqeP330LDusDo42nmGku+QMxsQ4s+f0hSs=;
 b=IOhWBLdAxgPlmd0qEiroKhiD0mE4Z+Yjpl8sgB1Eatqqvm7NYrd825cwcPb0Bb41uf
 erz+nBeYO+uwWCfiwrjbzRSOTuXPD69HXV+4W2RvBZdp3v31q6Yi+LN+WHNm/udVcFms
 ullbp65eYtHDn37/VK6qc+sSh/KI9nRt6ZG+UYvvx5EtdVcRPZc/N1gospp+KhVz566P
 SuK0PKafbiPW9ExPB+XIeq6Yb+VvL6g9XHB2xfEwVu9QfvWtUHhnSzGFu9KMD15qMGb5
 FMXvRJPaDp5cUCJrUcybHWbOVVHa8JcAgQ3+fgmJSJ57gZv2TndldQrbRr/GkDDjrElm
 oQ8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=YZZKoeme5xqeP330LDusDo42nmGku+QMxsQ4s+f0hSs=;
 b=QYY6Mk6KdU46iuCQsgelSANzoxLz33DuuPb2IAIsXpiQv4rq0qa1vOdAhqltdwmG4M
 6cFXBS5ZDd4ELGaVHfCGuyVvxJ2qyFUN8xANXFf05reLK4MLTg5fWmcBiszzd99MOY72
 bVxY/g3Wh18qXb64+ZvI1PaWZ8a3Xr6XQCz5miNJi/hHj3mpkqb1HkXGQOQdRg9K3QyN
 GHCvdPQlj9rIfBp1SBWZOOk3MaknvYI6Pgqt2vmN6uEz6NN3Cvik/mJ+sDPYfQ3suKia
 ZshOtLdsCEKVyKujOv9OAuSZNpr67hH00lSsKThX50oXU0tdSvRtd87JcZMdrE/xHlvI
 CyDg==
X-Gm-Message-State: APjAAAUlezGDk7iNcL/Hyc+Zpzh1sUaQD9SkAmENRPl/27Dha8eWXjhi
 QDFZB3c9eXDHWh2XGRR8yRBhAw==
X-Google-Smtp-Source: APXvYqw/zZ+sNL+hS35Q+rSxXrpQS4vtMuwXq+OuY5kqldv6dcTOsmCgm+R7PYBh8CgLOoWtrPH67A==
X-Received: by 2002:a02:9f09:: with SMTP id z9mr8952499jal.119.1575565264904; 
 Thu, 05 Dec 2019 09:01:04 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id k19sm2400909ion.81.2019.12.05.09.01.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 09:01:04 -0800 (PST)
Date: Thu, 5 Dec 2019 09:01:02 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Anup Patel <anup@brainfault.org>
Subject: Re: [PATCH] RISC-V: Add debug defconfigs
In-Reply-To: <CAAhSdy1RQw3MVcVT5y1EHr72LDNADKRL5nO2E8OrzBi+tpuvtA@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1912050900030.218941@viisi.sifive.com>
References: <20191205005601.1559-1-anup.patel@wdc.com>
 <alpine.DEB.2.21.9999.1912041859070.215427@viisi.sifive.com>
 <CAAhSdy1RQw3MVcVT5y1EHr72LDNADKRL5nO2E8OrzBi+tpuvtA@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_090107_695410_B7F41F46 
X-CRM114-Status: UNSURE (   9.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 5 Dec 2019, Anup Patel wrote:

> I understand that you need DEBUG options for SiFive internal
> use 

[ ... ]

> This is the right time to introduce debug defconfigs so that you can
> use it for your SiFive internal use

[ ... ]

> and you can find an alternative way to enable DEBUG options for SiFive 
> internal use.

What leads you to conclude that this was done for SiFive internal use?


- Paul

