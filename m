Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5668A781
	for <lists+linux-riscv@lfdr.de>; Mon, 12 Aug 2019 21:49:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yrbF5+UKNAhsfLiBKyD3ktrqnDYFFH8wtNGP9K59aTQ=; b=ajv7mgAI7qizcBFN6EwKdiRKm
	pXTpGoBMBsjTO19sa55ybpJaJZvYEFrPfpSUgQ3P/AQQLQkHdYjqJ8dWBwPmJI4I5uwX2xavqbYAs
	QstiH86eu+TQWftKQNLU52cBw8GvtF4bvQEzxS6bJGLfCEty+LpUv0r8ZCIu4v1s95ghuxk1RGc/W
	arT4gNUEPn9NqTAweIdPAA+ZljgPzN7vj1Fap3mRM+NdlBA9jfFeawM6UmyAOL0225IaBAMwLQkIL
	1/bl//9x/L1OUkJPxXZrhHdCtewrUoFxfSwsR6acgTL8zACwvSiQ5XHdyIuYUIi/qz9w4JhmkNert
	PQ4dYjDlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxGJf-0001HU-EA; Mon, 12 Aug 2019 19:49:15 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxGJZ-0001H9-Lp
 for linux-riscv@lists.infradead.org; Mon, 12 Aug 2019 19:49:10 +0000
Received: by mail-qt1-x844.google.com with SMTP id x4so6047648qts.5
 for <linux-riscv@lists.infradead.org>; Mon, 12 Aug 2019 12:49:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bluespec-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=UV8CKdboAmk/VxMPvqRcAfLPhy32LDZ4SxfI8+jq9eA=;
 b=jltM4Ar/lpuGu7lyFR8pJwgeA74SyhzojO+40mYneDCJsl94QUPrx70p61RHEz6xmu
 vxkRFSG8yB7Urm7pDINv5eITQYdhi20v2JKnVgLly8r+4TngIEXqgfyJWjjSMtT9mBQt
 gUCHl9Xmv24ePdraDYLmy1ht3MgFF7ACGEWY0cz6IJuxACbJ6YYWtRlW1EWgEI7xjhTQ
 YdjyYRXfgrXbypaFlvxwk/W2pesE3Uc5mymbJ0gXtvHWJZwSGwFXuIwJa6uYu+k9fRYM
 4wacfQuGkmQNOA5D6T6KTCi+hPh1pS6fcmEI0l8+cpFJNfBoCux0WwPHe0DCajgkek9P
 Zrag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UV8CKdboAmk/VxMPvqRcAfLPhy32LDZ4SxfI8+jq9eA=;
 b=QWQNb/uTcxIYT6q8Itnrluvr37tVMse/lJfl/eTI9T8ZNK8TA8vx8QCK25dUbQhAjK
 /eG2QYrIY68l7XWhju+6RufeRn3rwbEXWNFQ4kUsqXPO1ZLxfHAQzQm5bTEc2CQ/8qoF
 ODtlED6H7HNkpYc7uKD3g6Uku1o1Gp56+xSLw8K2bJccl3svhEAJUtTCX1E6t3Z5qECz
 ND1ZC46g9mvJTn+pF1OriMGV7T6qpSuXYBStzZxBPVG/8/3+jbKNFFaKxPBQ9CIzNEp2
 RaY4vx/gQpw6JQWNSLcT47pa0SKadHSkhfa4+0HTB7Tx8txk7034KM82MCPmsg+9ilS3
 OwXA==
X-Gm-Message-State: APjAAAVOWXswYKuWH1OI8HbHx23w/5B5BPZqnzqmpzkfB5BZeSiQ9JMo
 8gfEv/QC/fe6QVz3sT38z/odH2fnzw==
X-Google-Smtp-Source: APXvYqwt1wY0kFXUf2SJJ0SNo1VLt4PBkuZhW7TlkhaF569W0Da1qsUMXXhslmo12N/U1uTW9SVUGg==
X-Received: by 2002:ac8:30f3:: with SMTP id w48mr29811591qta.216.1565639348315; 
 Mon, 12 Aug 2019 12:49:08 -0700 (PDT)
Received: from [10.7.11.6] ([194.59.251.156])
 by smtp.gmail.com with ESMTPSA id k21sm7850588qki.50.2019.08.12.12.49.06
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 12 Aug 2019 12:49:07 -0700 (PDT)
Subject: Re: [PATCH] riscv: kbuild: drop CONFIG_RISCV_ISA_C
To: Christoph Hellwig <hch@infradead.org>,
 Charles Papon <charles.papon.90@gmail.com>
References: <alpine.DEB.2.21.9999.1908061929230.19468@viisi.sifive.com>
 <CAEUhbmVTM2OUnX-gnBZw5oqU+1MwdYkErrOnA3NGJKh5gxULng@mail.gmail.com>
 <CAMabmMJ3beMcs38Boe11qcsQvqY+9u=2OqA0vCSKdL=n-cK9GQ@mail.gmail.com>
 <20190812150348.GH26897@infradead.org>
From: Darius Rad <darius@bluespec.com>
Message-ID: <5a931461-c6a8-6d2d-4f73-103a10b26f0e@bluespec.com>
Date: Mon, 12 Aug 2019 15:49:06 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190812150348.GH26897@infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_124909_779260_C42CA59E 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Atish Patra <atish.patra@wdc.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Bin Meng <bmeng.cn@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 8/12/19 11:03 AM, Christoph Hellwig wrote:
> On Thu, Aug 08, 2019 at 02:18:53PM +0200, Charles Papon wrote:
>> Please do not drop it.
>>
>> Compressed instruction extension has some specific overhead in small
>> RISC-V FPGA softcore, especialy in the ones which can't implement the
>> register file read in a asynchronous manner because of the FPGA
>> technology.
>> What are reasons to enforce RVC ?
> 
> Because it it the unix platform baseline as stated in the patch.
> 

The same argument could be made for an FPU or MMU, yet there are options 
to disable those.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
