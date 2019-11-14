Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B613CFC0C4
	for <lists+linux-riscv@lfdr.de>; Thu, 14 Nov 2019 08:30:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=stYv2FfvRa7iMjXHLFSE4UMfToXTl5oO6OhrDRp4BK8=; b=i/i7esuuU4iqa/
	u7g/YLXbF9045T02nx/2D6GtcjA/gAkgpAWIu64xYjATfVzZC0FwQLnyVko3qOMjjC4RpIeRkTy2E
	3BIidGJekAiYEjsOMT754bSeUV1NuWuD0cWAr6xXa556/EUirggc4n0+57Q9SbqQmx3ky6HTfJB6M
	929u0vStHS6Qsmg99HGfj/3asz2WA4S/YyBRqSSiKVBu6MW3E1pnPYYW1ygmDHhA5+q4HL7vbfTTP
	pOTanFr4DhGQNCjSU/abZaao2R42DpSjGQvVAd96+yLb1mRhP0XJFXm/z0s47HbPiaKW+1uoFrkub
	5L2ZLJQ4z0zIvFNsci4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV9a1-0000PY-9M; Thu, 14 Nov 2019 07:30:13 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV9Zy-0000P5-8f
 for linux-riscv@lists.infradead.org; Thu, 14 Nov 2019 07:30:11 +0000
Received: by mail-oi1-x241.google.com with SMTP id 14so4368562oir.12
 for <linux-riscv@lists.infradead.org>; Wed, 13 Nov 2019 23:30:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=HIIuvkQenEP+WcnaiKlQlzfXKrHJDN5EaxUKaCsjEHY=;
 b=lv1yhYsvhI7zDkXS4eyf8jAZxKkKjow1QVM8r5wlHCxqgOnKJExYLxrVoxOYWyI54q
 VTDpF7C7KbIRF3SZa1+PT7TEvbphDLDpYO6Gcyu3u+HbURk+p0ekm28YgrXv8zQc2VVZ
 F2aBdXBY5K5zUKl4H4tGZuwBWhOhvfg19ezgaGAnqY2Ibp6666E2Iv9WSKPCg0ODjsfS
 Jt+ylVXzf0/wAMZml1NSdLbwXqbaTLV15gUNpSyJDM2tm1yRdAfX93zOBemdxlqViI2e
 Ju7uKdaOB8PQW49Z57dCegMVqWpzuEZod85kiwhHjEvf++m3xUms+OJxvoZCQuYbIXib
 nlXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=HIIuvkQenEP+WcnaiKlQlzfXKrHJDN5EaxUKaCsjEHY=;
 b=Od4o4CBN4TJk2Tfu4c7f+Vzyzm62p/DJR8Xd/0LyJ5SIgLYDodwqvV7tnMbW1QIZNN
 sKdzXjovwEA4jA0y+HZrSQha2SthU2L71yyrZamM8A3J29xA0X8ehzKLzjg3KE4WFtwF
 8R0AUNj4DFMjSi2YvwHF1D7cixGi6sQ/khWaa08uddOkCs1mCxAv7YJ6xKczaPNMpuaW
 z0RoPmBhocc9pQ5Xos2w8XNCTTsWDzO3jZhMzkE+BZzh8LRqmNZErlpyBCAv+0rX7F0A
 1TNVutdtUiL82Byu6X8CR8FzC53m1ZXHnvBXAVhwtcih01RBv3TT2N1lgAQKItMjW3qI
 /zrw==
X-Gm-Message-State: APjAAAX9pAgfKHc1mCc0WhJKH5Cfwu8lZIawYkjYyJu+ss4xozR08fsd
 EZogMSFJObATvt+BsRfs2zLeyw==
X-Google-Smtp-Source: APXvYqyjtdR7f9RE76oYylDsDA0DXihv5z14pSKtKEBOB37FaL6mRyPyvWd3E+p0l1Sbjjeru4WjIg==
X-Received: by 2002:aca:4c14:: with SMTP id z20mr2460753oia.76.1573716608800; 
 Wed, 13 Nov 2019 23:30:08 -0800 (PST)
Received: from localhost (wsip-98-172-187-222.no.no.cox.net. [98.172.187.222])
 by smtp.gmail.com with ESMTPSA id
 m11sm1556274otp.15.2019.11.13.23.30.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Nov 2019 23:30:08 -0800 (PST)
Date: Wed, 13 Nov 2019 23:30:07 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 01/12] riscv: abstract out CSR names for supervisor vs
 machine mode
In-Reply-To: <20191028121043.22934-2-hch@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1911132328220.11342@viisi.sifive.com>
References: <20191028121043.22934-1-hch@lst.de>
 <20191028121043.22934-2-hch@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_233010_387225_3A7B5172 
X-CRM114-Status: UNSURE (   7.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 28 Oct 2019, Christoph Hellwig wrote:

> Many of the privileged CSRs exist in a supervisor and machine version
> that are used very similarly.  Provide versions of the CSR names and
> fields that map to either the S-mode or M-mode variant depending on
> a new CONFIG_RISCV_M_MODE kconfig symbol.
> 
> Contains contributions from Damien Le Moal <Damien.LeMoal@wdc.com>
> and Paul Walmsley <paul.walmsley@sifive.com>.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Thanks, queued for v5.5-rc1.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
