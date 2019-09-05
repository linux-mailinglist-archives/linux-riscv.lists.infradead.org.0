Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC799A9D6E
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Sep 2019 10:46:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ddAz27KJPqQaOUjSl8auQnZyNTWYtUK/Car4nIExOXA=; b=S2TQ7z2wPhaW6N
	WSAEp3jUXGfNC3qOpi8eYmGCMdq8Yo6RSoZGaNU7xEIGvqKyzqPS0A1qSTVltRzH84SCDNRU1b6Jb
	lKAOe6VIrq2R7zTDc9Eshv+hZJAWor8c1osjEp4Hm7UkBMf4bNiBRX619tsFEWRc/MLbk659YhCmL
	H2msysKVYwGRD27IKM44/syz0AygKKyLXC580r9CNWV0cPnuDwoY2mQHjaAzLXfQVK5xkxqIGTsrU
	Le6jouMmEmS5pdCVJgmUCbuKSY/n9rj1nZeoaE1yEdiiRGqZ0Kdoj55+kiDcv1ptFF23ZH7o9MPIO
	6rnZFV0A/UihyoU0s+vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5nPC-0005Iw-68; Thu, 05 Sep 2019 08:46:14 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5nP9-0005Id-Sz
 for linux-riscv@lists.infradead.org; Thu, 05 Sep 2019 08:46:13 +0000
Received: by mail-io1-xd43.google.com with SMTP id h144so2971241iof.7
 for <linux-riscv@lists.infradead.org>; Thu, 05 Sep 2019 01:46:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=n+8GYsbOuZke0FPu2jyBC2Zd40xC0wf4raNZV2u6eis=;
 b=ebB8Hw3MFacBxf8uDh0EfKcIawQ6Tu5jnSKanAszZdjYCBcO6FavmxtPZ1AmrQSMjI
 +0u6SNi/gQofyWsSX79wa+1QZw733vxjLKqoZHXtlqYLSSSphvwHL+KKduzPn5Y9Net7
 /Mh7OrSd8cIfOygutefrsMQT9x+YGVQ4kfZpe7QHOVv6lAX+3+luGE93ofuJB9ISXA4D
 mAaXOlLHob6mX5Biy8YjFujjnivcLRWkXBpea4gfS6OfDht/6iJLRmPWAPdtmxCG6AM9
 xtaQ7dAgLpF5rXVFDm/NBT9VQqdWAS7u7EkPkU2ZgFZ+A5s1khRksaXX76HgevaCMkII
 2cwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=n+8GYsbOuZke0FPu2jyBC2Zd40xC0wf4raNZV2u6eis=;
 b=P2HtjSSS6dWm5ZacE7O1fNf5lm1ynWnk7xdxHu07Tz5H57bVkAiFOCbqLAKPqY/bOq
 s+o2oKB0VPpgsgMf01uCoMYwLTZZDnP/vhFKIhhteMOaTURG24/J8dq/B7cTHZ2D0obz
 SG4/NgA74/ep0Hy+WlJ7xna6QNfjoqMbDauoqvcEOi5M6kb6enUgmh7zaAQuFn6tlLxv
 VzdhvmxTLOo1ude85Mp68fBSEtVdaRyPZlB0SUBeNdNpUQcDu+v3i7deYe8cLZQs/vC4
 lrT4vEfDTeaEodvo/cNovKOwTtDMLaa3SWigY0sxDGCIVC5i4yuLijJU9ETnmL5N1SJH
 IIaQ==
X-Gm-Message-State: APjAAAVmdoqpoPyhlW3mMJz8veGl4HNUEt6oWOq8FHGGBpsclx5R9QiA
 bLiuN5UfQfHwkMEeKnhrlmtXLg==
X-Google-Smtp-Source: APXvYqzviX/JH9pBDh9d9fuUOHfvDxTO2iQdBVrkiMmNOJ+c08wbmNjrsdyNdduORNL2dzY0hQLdDA==
X-Received: by 2002:a5e:9419:: with SMTP id q25mr2662092ioj.249.1567673171187; 
 Thu, 05 Sep 2019 01:46:11 -0700 (PDT)
Received: from localhost ([2601:8c4:0:9294:cb6f:4cf:b239:2fee])
 by smtp.gmail.com with ESMTPSA id k9sm1225681ioa.10.2019.09.05.01.46.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Sep 2019 01:46:10 -0700 (PDT)
Date: Thu, 5 Sep 2019 01:46:10 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 2/6] riscv: cleanup send_ipi_mask
In-Reply-To: <20190821145837.3686-3-hch@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1909050145530.27305@viisi.sifive.com>
References: <20190821145837.3686-1-hch@lst.de>
 <20190821145837.3686-3-hch@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_014611_933532_1553B18C 
X-CRM114-Status: UNSURE (   6.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Atish Patra <Atish.Patra@wdc.com>, linux-riscv@lists.infradead.org,
 Palmer Dabbelt <palmer@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 21 Aug 2019, Christoph Hellwig wrote:

> Use the special barriers for atomic bitops to make the intention
> a little more clear, and use riscv_cpuid_to_hartid_mask instead of
> open coding it.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Thanks, queued for v5.4-rc1 with Atish's Reviewed-by:.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
