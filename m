Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B2FA593FF
	for <lists+linux-riscv@lfdr.de>; Fri, 28 Jun 2019 08:05:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Lxke+Ph5yjCBzivcKXiwugZbrrqOPcTlS5mBX96Vn8=; b=Nf6nC1Fc7zM3Dk
	/Ljm/SjuDmH8Lh0pWH5gjAV78h2yF0/Z17Lqb2BP3UCRhYbSVC+q2p8dBrqXV9owAfdTzpdfJkwsF
	VT47IBbVhJgs31WxH3+2PkbP4hZ0YiXlAU7LVwyltSniPdGeXiMGRU5lVyDZcRSvtxPlroO36SAiD
	B7IJYFVYvxPxphYmG7seKiTZjazMIzYNchhJMkBSp6HBhYWm68K3u0CMuS/OGHaU5to43guQfx9OV
	HZz4XhvVb3zpXkZaZqIr0IUYoS019bGOixNR15LvNH03VkcFAWpvkBtOXN1oktUXCYQzcx7iuIrYN
	2kfhjq0B/5ehzO2NIQ3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgk0L-00010Q-M6; Fri, 28 Jun 2019 06:05:01 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgk0I-000106-C6
 for linux-riscv@lists.infradead.org; Fri, 28 Jun 2019 06:04:59 +0000
Received: by mail-io1-xd42.google.com with SMTP id r185so10088117iod.6
 for <linux-riscv@lists.infradead.org>; Thu, 27 Jun 2019 23:04:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=dD6GWFUj7h7MKwy8d0ME1kUPrlYwO3zNRaczYMAZMLg=;
 b=B9CNMHwgbLGpVX+nuoDwIddvBL3X51Y1VWcf7v02lLsXC+575qcBKZq5Px7VOIdG35
 zIGYfDHdr/s4VtEdNlhAXjlBLr7jVluub6UDF6g8PzN0EmVWCd3NkcZUFinWYuxKyqWu
 Xc7sknf7sHwX1FyLo7XnX7bkytZ+RQjehExgB2val7UHkhbWaDpfgQfJgo/vL1oxl/k1
 1AXDh+EKZOix+xm0wSuja09LomhXJyvfE8ErO5Ee0TZKStFjOvCZMmqTuzc1O6lQPw4Z
 CcRaJZpuKA0uRBH9E3pkh722EcsLukk2/QQ12ze2aGH96G5POtB4px5/ae5LM322IlqH
 l83g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=dD6GWFUj7h7MKwy8d0ME1kUPrlYwO3zNRaczYMAZMLg=;
 b=O899B2J8avTsFNeOX3JMI1EPSDJ9+i0Oo0/OLgSSVL15XGZNyq3hU3r+EtYvNICWgu
 etbXMqYD65JQlVMu+5D7KXxYoIPeWN5hOv1C+5ToWhwU5RFEOD6E4OjdrRtQWl6AFLT/
 qAtWFltvghdmfNszB8vpaV6GQbdqbq4IBqqnGQ0xymNOOvGAkd2zMEKg1YAQJk+BlNJb
 VW/vfclazqDmPnXBjp/EYqBydxNTDVV24hwzJucYxY7tdogBnKKZen5RqddV1RpgNrV+
 IGb/3vlMO4GE3MjNZmTx8V6kmWgnvBlzHua/d3w5HeBrfB2svG/9VkQ+V9eRqVwYkQ4v
 l4cw==
X-Gm-Message-State: APjAAAWvlvDHuqb1GiAOzcOUMjBeLATp+akrOQ/fSJbpnbmxY4yH7gV/
 VUxdwdWk1E3AWvccKoPQezFm5xnTdY0=
X-Google-Smtp-Source: APXvYqyod+UlAoq9ovflDJhJ8GenAw4QB08sGcyEUNXP2MswvPRItgP0K3XJvi0OlnRSEfu8i/oZUw==
X-Received: by 2002:a02:b10b:: with SMTP id r11mr8962786jah.140.1561701897669; 
 Thu, 27 Jun 2019 23:04:57 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 r5sm1078872iom.42.2019.06.27.23.04.56
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 27 Jun 2019 23:04:57 -0700 (PDT)
Date: Thu, 27 Jun 2019 23:04:56 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: JaeJoon Jung <rgbi3307@gmail.com>
Subject: Re: [PATCH] riscv: using page table index in setup_vm()
In-Reply-To: <CAHOvCC72URVWs8RswjqeewKn0rnoik2OespWkt+d+RNhdTHOAg@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1906272304180.3867@viisi.sifive.com>
References: <CAHOvCC7EtFcYQDAQoenP7RdwW-4FQEex4FG5jLR2W0m+Q8t__Q@mail.gmail.com>
 <20190523095214.GD23850@rapoport-lnx>
 <CAHOvCC72URVWs8RswjqeewKn0rnoik2OespWkt+d+RNhdTHOAg@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_230458_475302_875D80BB 
X-CRM114-Status: UNSURE (   6.27  )
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
Cc: linux-riscv@lists.infradead.org, Mike Rapoport <rppt@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi

On Thu, 23 May 2019, JaeJoon Jung wrote:

> Thanks for your professional advice.
> I'd like to take your appropriate suggestion.

Are you planning to repost this patch with the new patch description?


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
