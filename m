Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C17F98CA79
	for <lists+linux-riscv@lfdr.de>; Wed, 14 Aug 2019 06:42:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0RgEC5Cz9Ozzb6G1zCnwfWdFcjHJTgLhKq3MctG3/Dk=; b=OpDzr08olLCTDf
	k/3T4YGkIFaEveZuK4MwP5YYg3T+C6fnrqeJbN3ULSAAi3Oux66KBGM+MbB8yQTlnysn5q8r/c1CH
	FP8fPSK8Izm07uhdPamoZwaPIAZwcxPc8QQ/rB5Etgb70HjC1oIveY6LDh5foWsNLK2hZy+E4r1Bh
	kz/XXLQgOKJY2SH0rOO7wNBcBAZ2n8C8CUDsWRMY0Z5TGce1iKiaspfoHPs/oWrJmzsJ29GANzs56
	QIcDCRbe6FaEoeJBsl94cDMcJulLlCBywOv+KKSZV4Yf5OQR6i+ODGfSsLMr52WGJP0khEBhlwPkS
	yEPkggoeSy4Ws5lzRfpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxl6q-0000ss-At; Wed, 14 Aug 2019 04:42:04 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxl6m-0000sa-J9
 for linux-riscv@lists.infradead.org; Wed, 14 Aug 2019 04:42:01 +0000
Received: by mail-oi1-x244.google.com with SMTP id m206so71119400oib.12
 for <linux-riscv@lists.infradead.org>; Tue, 13 Aug 2019 21:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=zWu5SUa2gWDy2A7vXqugTo7J4wSILytsfZpdfAVTMIo=;
 b=HgkM5fFuFjMEvvdTk7aajxmDKFY+/8DQ+jDApa7K9sWpQ+ZhkCyHQjq04TgpwrACgg
 zBQ9vusEsl8aprB40s5DddqLdh47ZJBNZyPYgE+zuow98FSvbgyELCWlIOWvFV7qt2jP
 Q3KafW+0U+0pk0adaygLa3ee8miDfu+6s+Be9OkuFwaaMqkEkv7GRrG4kxco11F47fGA
 wo9taJBmQZC+Yy4VZsPsexXu0BRQri3E+2CRl3tJ4by46UxGqiZFre4+cTyWjB6siQY1
 yrTabP0U2cGD/J4CgOXs5nHWrqTkkB6R8Vg77DQ6WkljGI3gCP1G9mWp3DQc9K/0ktNA
 bfug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=zWu5SUa2gWDy2A7vXqugTo7J4wSILytsfZpdfAVTMIo=;
 b=gAavCKZDmmbK7vvx6zqVmji7QHogHZsiZPHO9is4+8+BeLfiPd+G5glv0K+DfZQsry
 X6g99T4udIn7yFVgTT2vgIxmrypqoZBfFDPLsfKmD8tZGBAXuX6hMtMZJxqbYfpnssA/
 AxTTOnpl9cIOmTmSkMfTjPqZhdnfQiQXgaLn5M82SXZuq2RuHKaWg5fMLo63bLpLyO36
 aJQNtDs6sSxk5H/lDTMLQJt67MqiEkYERmqgSMcHXH+Q6afXtLoDitTMEz+DR7AvF/zO
 YaThZRRXK1WGI/rANB/sp3qop7eFhBD8fa1Z0u0W3dmzihXYfPDlHONRxjddecx5SSPc
 acjQ==
X-Gm-Message-State: APjAAAWHZQ/GnXylDLw+po6eXbqsRTTiKajX9oVIF5Vgx79WPOzFcUgr
 mRmlPzHJDfNTQ5IfTTcGlM++BA==
X-Google-Smtp-Source: APXvYqyLwU3+iARM4Sl8p8WJD8acDem7R6dnM4175yjPenrhI/uqdG67o2+H8iF2eOkz36QcYgnT7w==
X-Received: by 2002:a02:9f19:: with SMTP id z25mr1342269jal.107.1565757719608; 
 Tue, 13 Aug 2019 21:41:59 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 x11sm27051947ioh.87.2019.08.13.21.41.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 13 Aug 2019 21:41:58 -0700 (PDT)
Date: Tue, 13 Aug 2019 21:41:58 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 03/15] riscv: refactor the IPI code
In-Reply-To: <20190813154747.24256-4-hch@lst.de>
Message-ID: <alpine.DEB.2.21.9999.1908132141350.18249@viisi.sifive.com>
References: <20190813154747.24256-1-hch@lst.de>
 <20190813154747.24256-4-hch@lst.de>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_214200_662031_651EAF6A 
X-CRM114-Status: UNSURE (   6.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, Palmer Dabbelt <palmer@sifive.com>,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 13 Aug 2019, Christoph Hellwig wrote:

> This prepare for adding native non-SBI IPI code.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Thanks, queued for v5.4-rc1.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
