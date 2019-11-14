Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F04D1FC0E5
	for <lists+linux-riscv@lfdr.de>; Thu, 14 Nov 2019 08:40:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oe5jMZll08QIQHzJLZrGGfjO6vmyTNPT2CofKdK7clQ=; b=OTJKEfquc8ZvCd
	wzx0O8pOnIEpVoPNpwDC2GCi/fbtRcFVqx718o8MECdIMGcUDDHKjjbMFcWyZts/qRKxV3ycKjU9o
	KegiZ1WqXUKoleuEYepEGX27poK9aibDsc9XTRl86K3b8t8cuJGCmJ6t+I6Khp9OGP7ItD8LhfhH7
	gB72F3Gv7s56pDqHBoN2AGf2aRwrjAZqjvP1rQdgE7AzUE/dYGnkoml8iJzUNih7FhQUYAf95E6yt
	0VfvMZr/3xXVrlOTX3ZZ4hdgNoQTZh9tWwF37FT1r3d44Z+Z57khq7LnYJPB4njpZzgjqt0OM6T22
	+SLWMBiBlesIS2zgGv+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV9jc-0004EW-Ih; Thu, 14 Nov 2019 07:40:08 +0000
Received: from mail-oi1-x22c.google.com ([2607:f8b0:4864:20::22c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV9jX-0003gO-TY
 for linux-riscv@lists.infradead.org; Thu, 14 Nov 2019 07:40:05 +0000
Received: by mail-oi1-x22c.google.com with SMTP id a14so4429523oid.5
 for <linux-riscv@lists.infradead.org>; Wed, 13 Nov 2019 23:40:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=YMn33D1fvbsOQjVLRYkAXXQ5Mr3LhRnG3fNN+0bZFqc=;
 b=V5dSsQTsDt8RrkZGi2u+8jj4+O7/AdchvYLEDWZDIOo1jiwBEUk2EHUk6GJPamFBX/
 tWExz2iSLQmnLRTubNgcib2g+uFBMXKV1hEHa6B1IfSZOLE/78A6OqjnSQ29HNCCnZe2
 tW8TTwxPNcHaAT88BCFrfQjGvlaTOlX8aOdtnIgUssLBZGT8jNu5wFyDkEILEjpHaFXz
 3pnf0wpm0xbiKozJpO3b0XhQQi/CdRLoWJXu4EZ7RkpFejjgDD6Hm1Yru2qwY7RsBOfd
 fPzpuVIEuehujelxjW6Cg7zZ+Y3uhKVikM6ijBx0d0hyWqRQam1VgA8FnsyR9FwvIBr5
 22WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=YMn33D1fvbsOQjVLRYkAXXQ5Mr3LhRnG3fNN+0bZFqc=;
 b=Yjw5wUhf6SyXMrQ40UWLm6y6tdQp/n1DqJPcm1qOqPp/CzaIOW0W6wHUiyc6dd64t6
 UZwXYkV4KksGURJexlnimPYOLzJUKlIfipfx3DAwzOaUjiDZfFC+A0gXoYvzzGzx+pGg
 4w8oR+51AmUBbO7AeLhQgiOCwcFPGSYCA36MQ3AlmmvBnTwUFV2GSiD89yI8DBR670Zb
 TQEi0btseVftEQXs4KAN+tP/SZKWguQ91/Sv6IgzQ0WL84Dp/n8d+9H2xs5PZ2GWwGl0
 COzxP2z5gsHRV2rTf7ynl5uAESOIFXhU4iOTNBl+wxR6A5uS2+WeZd2xl74sKFGl2fSZ
 Oo7A==
X-Gm-Message-State: APjAAAUgIEFEBMLU794hZZASZBkFZ0sg5GmM6AeLjmZR1OFVICU3sJEY
 Bdjc5M21y58AbxOWUfjyG9HYNQ==
X-Google-Smtp-Source: APXvYqwXkyMYI6Uj032rQa/wu9B9wzzpL5hREfSXGRjGQISEHzEQE1lpJRaydPGwDIIazZjbtphGmA==
X-Received: by 2002:aca:6c1:: with SMTP id 184mr2296358oig.84.1573717202583;
 Wed, 13 Nov 2019 23:40:02 -0800 (PST)
Received: from localhost (wsip-98-172-187-222.no.no.cox.net. [98.172.187.222])
 by smtp.gmail.com with ESMTPSA id
 e19sm1564350otj.51.2019.11.13.23.40.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Nov 2019 23:40:02 -0800 (PST)
Date: Wed, 13 Nov 2019 23:40:01 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 10/15] riscv: read the hart ID from mhartid on boot
In-Reply-To: <20191017173743.5430-11-hch@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1911132339360.11342@viisi.sifive.com>
References: <20191017173743.5430-1-hch@lst.de>
 <20191017173743.5430-11-hch@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_234003_966423_2DD28400 
X-CRM114-Status: UNSURE (   7.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:22c listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Atish Patra <atish.patra@wdc.com>, Damien Le Moal <Damien.LeMoal@wdc.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 17 Oct 2019, Christoph Hellwig wrote:

> From: Damien Le Moal <Damien.LeMoal@wdc.com>
> 
> When in M-Mode, we can use the mhartid CSR to get the ID of the running
> HART. Doing so, direct M-Mode boot without firmware is possible.
> 
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Atish Patra <atish.patra@wdc.com>

Thanks, queued for v5.5-rc1.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
