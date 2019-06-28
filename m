Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97DC45A61B
	for <lists+linux-riscv@lfdr.de>; Fri, 28 Jun 2019 22:59:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tKc5BJjG4g6jl+gwWberGInoimABsAC257t4gp2aG0E=; b=TQXK29Kh8W+ciP
	yS4w3t0rw+OkWBFpzkf4pT9vaiegkqth5yxgh3l9ojM6NmI6Uv1S7lFuZ0N8hzJkad2x6pcbsIDcG
	jAa+iIuPYVcIP3t36s6uXCaODoOHP/rVC1eSkAJbaDN8U4nP+7q4s3C1r+2ILVKdAyJSe6RqC0zC1
	b3txGDQ88rUtznboeRtMTJ0uB+oAAJ2LTqEEsqQonN0Md81leiXvfwXzqqeiF0IxJzHYHy6xmzswR
	7APTfC2UdPWNfMlX7MzMQErgqoY38lmOXqb+Wc37ySHVwcf6mUrDo3KmPkZmkureTrnfX/jyVY+ul
	z21jlenSvnT27uOEY89w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgxxq-0002VR-As; Fri, 28 Jun 2019 20:59:22 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgxxl-0002Ui-PN
 for linux-riscv@lists.infradead.org; Fri, 28 Jun 2019 20:59:19 +0000
Received: by mail-io1-xd42.google.com with SMTP id m24so15416012ioo.2
 for <linux-riscv@lists.infradead.org>; Fri, 28 Jun 2019 13:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=STUNHcZ4hxOZiod6u/3V1J8ZChBosSMoQGGe/lSDBs0=;
 b=ghENWpAAVzjbt6oM5hyVzf70X1DiGlFi89Bdqe+7m0aOwd0gs6r55kdMdjWrE3ONfx
 JaH14I+2HCdc/eCei6DpI4p6c0FNK9z0ygDH0qvEjwGggxSvd8ikRv3/OHjVFZMPjpMz
 jqbJHQV1/IJf+VdXISXfgT2VByp1YtvqGI3BWUsLtyZxTExbYxReW9zWUlz7b1Br5k60
 bGUbiq0ZY9id6VJqboNCXDb5vZv8e9UVboLJ4Vz8b0Xr25u6RJ6CsYcgT2zxlmcIi6ZK
 M7VUqWqwSNocDJfSHYoKa9/pdWcrAP1AAxoGny8AZgQ+TH4vxaQ0g9OSfGP8mMZzEvhf
 bM8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=STUNHcZ4hxOZiod6u/3V1J8ZChBosSMoQGGe/lSDBs0=;
 b=NORTPTC+tNpG2xItYHVBt7FrSluOaFmJaBADX28ZTQlDcstjto2eXGK0a7/tcYXDMq
 U0PM5LBDbAt4PV7nhFwiiKdARNZ3W8Pxyzro/s/cKrIbKro4QQ30mABiPqJuw2wTRfa7
 XREWAa9M7R6+dY3jWiybTsHIiTmsqNA2Em6UdcQD7AwhoDZ1C0rFHzQ93D/3QmYUq56s
 cgY/n3Aw3iL3yj4xxUo1X6Vu5+BEg58XMMG2nThHEtv112n6k6jQgS0fPwUj3kiH98eh
 YxMWKmBMG/r0Vyv3UEhO7yfQnmtGiuXhCM3CD5hyblRV4jsVvjPmZRR0rEwMf8V1QdDS
 kTIQ==
X-Gm-Message-State: APjAAAXaHOaz6ENn5uHTDntaLJ+sGhl647neZVM61OzSG0QstUdpn2vQ
 F8a7DdD36hYvtDbbn10FqjfWjlhpxNM=
X-Google-Smtp-Source: APXvYqxXFZwkCq/2JrQtMexw56mdAgVIzXPkjYw4TSdLaDVipd/LicRSt3CQ4GKhXW+y9Vsk0zxqrA==
X-Received: by 2002:a5d:96d8:: with SMTP id r24mr2537366iol.269.1561755556522; 
 Fri, 28 Jun 2019 13:59:16 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 n21sm2918468ioh.30.2019.06.28.13.59.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 28 Jun 2019 13:59:15 -0700 (PDT)
Date: Fri, 28 Jun 2019 13:59:15 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Anup Patel <Anup.Patel@wdc.com>
Subject: Re: [PATCH v5 1/2] RISC-V: Fix memory reservation in setup_bootmem()
In-Reply-To: <20190607060049.29257-2-anup.patel@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1906281348441.3867@viisi.sifive.com>
References: <20190607060049.29257-1-anup.patel@wdc.com>
 <20190607060049.29257-2-anup.patel@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_135917_829725_AD494D0D 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Christoph Hellwig <hch@infradead.org>,
 Atish Patra <Atish.Patra@wdc.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 7 Jun 2019, Anup Patel wrote:

> Currently, the setup_bootmem() reserves memory from RAM start to the
> kernel end. This prevents us from exploring ways to use the RAM below
> (or before) the kernel start hence this patch updates setup_bootmem()
> to only reserve memory from the kernel start to the kernel end.
> 
> Suggested-by: Mike Rapoport <rppt@linux.ibm.com>
> Signed-off-by: Anup Patel <anup.patel@wdc.com>
> Reviewed-by: Christoph Hellwig <hch@lst.de>

Thanks, queued for v5.3.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
