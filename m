Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE7BA9D92
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Sep 2019 10:56:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nnkiYmeH+uACoJrMTA6RxsBVWCqt13N61SzMTZAdCgE=; b=EO6LBb2YZaJZ6f
	wIp8tWJTlLWVVUdWjgoG7thPzEOuph8q9ZDVMgjIATnfVOU1PxokogK5PVQ20Rb5UGe08//7YYaYh
	yoFGQEDm1o6p6v9d5rSKEJBBM8j2MYQPiwHbLjGkJlsjH6rr7jbqEHt9iI3lcvTXA4jHYF4J938N2
	W5QoXPvTImeZxSPZw6E778lFMpJ6hrTX6OShrDqif73GwvhtrYc/IQCp3E3ajUcPFYHkynjagMGkP
	Kg1mpvbJiv8A/sJT0yuxqRAT1BvzOT5wCE+qTXfLaLFK7rWNxTxD5JR/Nd6rZ/TQLE6Z+en0yBuRL
	RUxmVgjJGXTzR8jcJMXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5nYa-0000k9-PK; Thu, 05 Sep 2019 08:55:56 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5nYX-0000jm-53
 for linux-riscv@lists.infradead.org; Thu, 05 Sep 2019 08:55:54 +0000
Received: by mail-io1-xd41.google.com with SMTP id h144so3029312iof.7
 for <linux-riscv@lists.infradead.org>; Thu, 05 Sep 2019 01:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=9ZA+9lsIKA76unhiveor2cNBDv+X5HNbpgqXBFb1k/o=;
 b=bNX0zt89GT81rsyxUc6iL6S3LVepH2AfEEgSwFm3WUKWJs5K+Y8YKYpfI8x9EH8r7u
 6TfwnYx6zbO77gZDhM3ZbS3ftvCH603InfVO11EJ/g25fMcQTtEKN6LynLPBPA29Ek1o
 NkvLKy9AAAFSLWRtOARqKdCe4BwYs2cCfbcpsTuhR7nMc+KBniM1dhI8W0vlawKk12JF
 yXU3VigN1WmPq7DmUqIItfS663Cv/fXETRgxeKG7Y+2HNqrHrCLP0XgQYblVzTu/BYMv
 0FALnVIPIXAkMiGLlA45nasuTA609JDnTckMUr00+v2Xm6p4TqjF5tA/eAyWbtkUJ8Ec
 KFhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=9ZA+9lsIKA76unhiveor2cNBDv+X5HNbpgqXBFb1k/o=;
 b=iqBauW/vkC0YcewUSmk3w0gVLvVEYA0JWLkTs95Q1KV75KnlWrzy54nMt+3nEmePBD
 MgwR6Ge+VHMSvoar0m6+mTGARoLjoor06ebDT2x0pN2UN3S9qWXanacKlcyRPe79Iu9g
 5fSKHvtHO27xLFRRbUI+xZ22tKVo1ClfD0ca7cXLij4+n7nySErqHgWYFs9vjmTOeODk
 UWtdKFlMtVQywCTFjXWqig50rMqcolbkMCf8plh9yAFYtjtgMGn7u5hrTFiV8979EASQ
 aITZvJQvOeH2q/3XRC8wcmc2WxTZ1J5odz0daos5PLTdHvlpHzHWKD84LEw4H83xB8Ph
 zyIg==
X-Gm-Message-State: APjAAAWhXy9b7WKoQB0Y3A9iZWRboqJVOlpgBbN5TGZorfRkrASrb7T8
 vH/E3gN/ObOOB0AoLeQuoIHiUJVt3B4=
X-Google-Smtp-Source: APXvYqx8nIsYmfYjFL2LgmmYyY4Kqkz94/EMeK9X2cn+J+7W8/N4t/dYyZBVqgQqwP1AiijYQobfdw==
X-Received: by 2002:a02:9a12:: with SMTP id b18mr2930324jal.70.1567673752301; 
 Thu, 05 Sep 2019 01:55:52 -0700 (PDT)
Received: from localhost ([2601:8c4:0:9294:cb6f:4cf:b239:2fee])
 by smtp.gmail.com with ESMTPSA id c4sm1139923ioa.76.2019.09.05.01.55.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Sep 2019 01:55:51 -0700 (PDT)
Date: Thu, 5 Sep 2019 01:55:50 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 5/6] riscv: don't use the rdtime(h) pseudo-instructions
In-Reply-To: <20190821145837.3686-6-hch@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1909050155290.27305@viisi.sifive.com>
References: <20190821145837.3686-1-hch@lst.de>
 <20190821145837.3686-6-hch@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_015553_199213_A1AD77B2 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
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

> If we just use the CSRs that these map to directly the code is simpler
> and doesn't require extra inline assembly code.  Also fix up the top-level
> comment in timer-riscv.c to not talk about the cycle count or mention
> details of the clocksource interface, of which this file is just a
> consumer.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Thanks, queued for v5.4-rc1 with Atish's Reviewed-by:.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
