Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D9EB3AD7
	for <lists+linux-riscv@lfdr.de>; Mon, 16 Sep 2019 14:57:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zLM3TsvHSkFhxOCP6tqCnwCH1HXC620tgT+Ki3XEuY4=; b=oI6N+jHK1eID0D
	zhWwB9KRzugdc5pPWZe6ROsnmbPbX3OXjwytHxx4QCuOCTW1zCoQhPgn/ef5aPXthX7vs8yqyeMSo
	OJUz2UeWYCaRG26LdBrCsRKCCrQixryG8h2EQE4/4wgcyvIfCi54+tz3E3ZOj7a/lSTZOmgNcw7ji
	s1qJhQMBPeO0Hy/l5eLj4w6YBU32SLO67NXDCYtWKK7gPvH6Waa0xkyC2v+XHjWgr06VXoA1IifUp
	svauIRiCFXsgvpZzDwAgG2VvNSP24qtXO4WrUXNwBAg/+0f/Vr+u6m+FuY1uELRjKjOJnIoWONVs+
	rAzB71CIQyBUdelDSKXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9qZN-0007CI-Hx; Mon, 16 Sep 2019 12:57:29 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9qZE-0007BO-VA
 for linux-riscv@lists.infradead.org; Mon, 16 Sep 2019 12:57:22 +0000
Received: by mail-ed1-x542.google.com with SMTP id y91so32987929ede.9
 for <linux-riscv@lists.infradead.org>; Mon, 16 Sep 2019 05:57:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=aFLGIENEDQOBhys1thGsZ6higxQQlTaU+TMP6ccyh4Y=;
 b=PzM0Z5Yud8yQir7fH+iLf2GzB7onVdqE8GWsCpjrxxFYJxBz3iPT9RXPYlL5+7RLKJ
 B0eJPkBkayQnWh9BdA7YkAvCr7tdmd6rOOEtLgtzWV8Pj6mjjXMcN4xlDHCRcKOL9wsm
 CmHmGhktWLbIIAqF7npC02At32NC2WzAiBKxehoKv7M3d/Ngb4l237APpecOgFuQHl3A
 zqjX0k9imB+4Mk2R26QUJvtTO5yQoAQA9z9KE8XMmSJtv7CQ5cJwTbd+M9q8IMsO93EV
 9TnImA4fHSr00QdYOeuKatwfMrLxAwJC7oWye16o/qyVuO53YJGcy0GpivWpe1E24y+F
 sHlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=aFLGIENEDQOBhys1thGsZ6higxQQlTaU+TMP6ccyh4Y=;
 b=r9RYQPg0kaaK2Tivpvpt+3+c/OZ8KsbozY8gFy5CNxUNNryTnr/PXCx6uKppLt+Qj2
 GqWLKMYdJOjditeaM7nRrrDGIuHIBmbt1LMS0mkynbrtpprKUxQzO0/TzOm9ZbjJHMrN
 0rC0MDOUhLoCBfTo9bvG2HuVUl6C1jtmXAIm5YINcKLegc0pcrVom9ooRmgfcTCpiHpX
 dYfj5Fy/QwFQXRITMRmrzl6qhJqzlf7YtoGLkLb24OhLXn8V+VbYV6qb4G3f27WS6pOy
 cHSrab91geUYQzlAag6vxfsY1yCC36VIx6mJkyKDMIfeVjqis72qkLe8lIOzaXFqFJJl
 heVw==
X-Gm-Message-State: APjAAAVe3XCnnJjJ5WKlgnvQfg45NKk184SXwXJWBqWImq0jgV0XVR5o
 HTTKtJfHdiX+CZMFe3+BT+/X7Q==
X-Google-Smtp-Source: APXvYqx1oWgsSbWM8oAM35XecbDYmxBGz5TMfGulCgFf1MxD+hF1N4mXSrJxaw49dBgzMpBbsX+l6w==
X-Received: by 2002:aa7:c154:: with SMTP id r20mr40727034edp.268.1568638638822; 
 Mon, 16 Sep 2019 05:57:18 -0700 (PDT)
Received: from [10.10.2.67] ([85.195.192.192])
 by smtp.gmail.com with ESMTPSA id o26sm1526150edi.23.2019.09.16.05.57.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Sep 2019 05:57:18 -0700 (PDT)
Subject: Re: [PATCH RFC 11/14] arm64: Move the ASID allocator code in a
 separate file
To: Guo Ren <guoren@kernel.org>, Will Deacon <will@kernel.org>
References: <20190321163623.20219-12-julien.grall@arm.com>
 <0dfe120b-066a-2ac8-13bc-3f5a29e2caa3@arm.com>
 <CAJF2gTTXHHgDboaexdHA284y6kNZVSjLis5-Q2rDnXCxr4RSmA@mail.gmail.com>
 <c871a5ae-914f-a8bb-9474-1dcfec5d45bf@arm.com>
 <20190619091219.GB7767@fuggles.cambridge.arm.com>
 <CAJF2gTTmFq3yYa9UrdZRAFwJgC=KmKTe2_NFy_UZBUQovqQJPg@mail.gmail.com>
 <20190619123939.GF7767@fuggles.cambridge.arm.com>
 <CAJF2gTSiiiewTLwVAXvPLO7rTSUw1rg8VtFLzANdP2S2EEbTjg@mail.gmail.com>
 <20190624104006.lvm32nahemaqklxc@willie-the-truck>
 <CAJF2gTSC1sGgmiTCgzKUTdPyUZ3LG4H7N8YbMyWr-E+eifGuYg@mail.gmail.com>
 <20190912140256.fwbutgmadpjbjnab@willie-the-truck>
 <CAJF2gTT2c45HRfATF+=zs-HNToFAKgq1inKRmJMV3uPYBo4iVg@mail.gmail.com>
 <CAJF2gTTsHCsSpf1ncVb=ZJS2d=r+AdDi2=5z-REVS=uUg9138A@mail.gmail.com>
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
Autocrypt: addr=jean-philippe@linaro.org; keydata=
 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
Message-ID: <057a0af3-93f7-271c-170e-4b31e6894c3c@linaro.org>
Date: Mon, 16 Sep 2019 14:57:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.0
MIME-Version: 1.0
In-Reply-To: <CAJF2gTTsHCsSpf1ncVb=ZJS2d=r+AdDi2=5z-REVS=uUg9138A@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_055721_025544_B4AB24E9 
X-CRM114-Status: GOOD (  27.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: aou@eecs.berkeley.edu,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, suzuki.poulose@arm.com,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Palmer Dabbelt <palmer@sifive.com>, christoffer.dall@arm.com,
 iommu@lists.linux-foundation.org, Mike Rapoport <rppt@linux.ibm.com>,
 Anup Patel <anup.Patel@wdc.com>, Atish Patra <Atish.Patra@wdc.com>,
 Julien Grall <julien.grall@arm.com>, james.morse@arm.com, gary@garyguo.net,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

SGksCgpPbiAxMy8wOS8yMDE5IDA5OjEzLCBHdW8gUmVuIHdyb3RlOgo+IEFub3RoZXIgaWRlYSBp
cyBzZXBlcmF0ZSByZW1vdGUgVExCIGludmFsaWRhdGUgaW50byB0d28gaW5zdHJ1Y3Rpb25zOgo+
IAo+IMKgLSBzZmVuY2Uudm1hLmIuYXN5Ywo+IMKgLSBzZmVuY2Uudm1hLmIuYmFycmllciAvLyB3
YWl0IGFsbCBhc3luYyBUTEIgaW52YWxpZGF0ZSBvcGVyYXRpb25zCj4gZmluaXNoZWQgZm9yIGFs
bCBoYXJ0cy4KCkl0J3Mgbm90IGNsZWFyIHRvIG1lIGhvdyB0aGlzIGhlbHBzLCBidXQgSSBwcm9i
YWJseSBkb24ndCBoYXZlIHRoZSB3aG9sZQpwaWN0dXJlLiBJZiB5b3UgaGF2ZSBhIHBsYWNlIHdo
ZXJlIGl0IGlzIHNhZmUgdG8gd2FpdCBmb3IgdGhlIGJhcnJpZXIgdG8KY29tcGxldGUsIHdoeSBu
b3QgZG8gdGhlIHdob2xlIGludmFsaWRhdGUgdGhlcmU/Cgo+IChJIHJlbWVtYmVyIHdobyBtZW50
aW9uZWQgbWUgc2VwYXJhdGUgdGhlbSBpbnRvIHR3byBpbnN0cnVjdGlvbnMgYWZ0ZXIKPiBzZXNz
aW9uLiBBbnVwPyBJcyB0aGUgaWRlYSByaWdodCA/KcKgCj4gCj4gQWN0dWFsbHksIEkgbmV2ZXIg
Y29uc2lkZXIgYXN5YyBUTEIgaW52YWxpZGF0ZSBiZWZvcmUsIGJlY2F1c2UgY3VycmVudCBvdXIK
PiBsaWdodCBpb21tdSBkaWQgbm90IG5lZWQgaXQuCj4gCj4gVGh4IGFsbCBwZW9wbGUgYXR0ZW5k
IHRoZSBzZXNzaW9uIDopIExldCdzIGNvbnRpbnVlIHRoZSB0YWxrLsKgCj4gCj4gCj4gR3VvIFJl
biA8Z3VvcmVuQGtlcm5lbC5vcmcgPG1haWx0bzpndW9yZW5Aa2VybmVsLm9yZz4+IOS6jiAyMDE5
5bm0OeaciDEy5pel5ZGoCj4g5ZubIDIyOjU55YaZ6YGT77yaCj4gCj4gICAgIFRoeCBXaWxsIGZv
ciByZXBseS4KPiAKPiAgICAgT24gVGh1LCBTZXAgMTIsIDIwMTkgYXQgMzowMyBQTSBXaWxsIERl
YWNvbiA8d2lsbEBrZXJuZWwub3JnCj4gICAgIDxtYWlsdG86d2lsbEBrZXJuZWwub3JnPj4gd3Jv
dGU6Cj4gICAgID4KPiAgICAgPiBPbiBTdW4sIFNlcCAwOCwgMjAxOSBhdCAwNzo1Mjo1NUFNICsw
ODAwLCBHdW8gUmVuIHdyb3RlOgo+ICAgICA+ID4gT24gTW9uLCBKdW4gMjQsIDIwMTkgYXQgNjo0
MCBQTSBXaWxsIERlYWNvbiA8d2lsbEBrZXJuZWwub3JnCj4gICAgIDxtYWlsdG86d2lsbEBrZXJu
ZWwub3JnPj4gd3JvdGU6Cj4gICAgID4gPiA+ID4gSSdsbCBrZWVwIG15IHN5c3RlbSB1c2UgdGhl
IHNhbWUgQVNJRCBmb3IgU01QICsgSU9NTVUgOlAKPiAgICAgPiA+ID4KPiAgICAgPiA+ID4gWW91
IHdpbGwgd2FudCBhIHNlcGFyYXRlIGFsbG9jYXRvciBmb3IgdGhhdDoKPiAgICAgPiA+ID4KPiAg
ICAgPiA+ID4KPiAgICAgaHR0cHM6Ly9sa21sLmtlcm5lbC5vcmcvci8yMDE5MDYxMDE4NDcxNC42
Nzg2LTItamVhbi1waGlsaXBwZS5icnVja2VyQGFybS5jb20KPiAgICAgPiA+Cj4gICAgID4gPiBZ
ZXMsIGl0IGlzIGhhcmQgdG8gbWFpbnRhaW4gQVNJRCBiZXR3ZWVuIElPTU1VIGFuZCBDUFVNTVUg
b3IgZGlmZmVyZW50Cj4gICAgID4gPiBzeXN0ZW0sIGJlY2F1c2UgaXQncyBkaWZmaWN1bHQgdG8g
c3luY2hyb25pemUgdGhlIElPX0FTSUQgd2hlbiB0aGUgQ1BVCj4gICAgID4gPiBBU0lEIGlzIHJv
bGxvdmVyLgo+ICAgICA+ID4gQnV0IHdlIGNvdWxkIHN0aWxsIHVzZSBoYXJkd2FyZSBicm9hZGNh
c3QgVExCIGludmFsaWRhdGlvbiBpbnN0cnVjdGlvbgo+ICAgICA+ID4gdG8gdW5pZm9ybWx5IG1h
bmFnZSB0aGUgQVNJRCBhbmQgSU9fQVNJRCwgb3IgT1RIRVJfQVNJRCBpbiBvdXIgSU9NTVUuCj4g
ICAgID4KPiAgICAgPiBUaGF0J3MgcHJvYmFibHkgYSBiYWQgaWRlYSwgYmVjYXVzZSB5b3UnbGwg
bGlrZWx5IHN0YWxsIGV4ZWN1dGlvbiBvbiB0aGUKPiAgICAgPiBDUFUgdW50aWwgdGhlIElPVExC
IGhhcyBjb21wbGV0ZWQgaW52YWxpZGF0aW9uLiBJbiB0aGUgY2FzZSBvZiBBVFMsCj4gICAgIEkg
dGhpbmsKPiAgICAgPiBhbiBlbmRwb2ludCBBVEMgaXMgcGVybWl0dGVkIHRvIHRha2Ugb3ZlciBh
IG1pbnV0ZSB0byByZXNwb25kLiBJbgo+ICAgICByZWFsaXR5LCBJCj4gICAgID4gc3VzcGVjdCB0
aGUgd29yc3QgeW91J2xsIGV2ZXIgc2VlIHdvdWxkIGJlIGluIHRoZSBtc2VjIHJhbmdlLCBidXQg
dGhhdCdzCj4gICAgID4gc3RpbGwgYW4gdW5hY2NlcHRhYmxlIHBlcmlvZCBvZiB0aW1lIHRvIGhv
bGQgYSBDUFUuCj4gICAgIEp1c3QgYXMgSSd2ZSBzYWlkIGluIHRoZSBzZXNzaW9uIHRoYXQgSU9U
TEIgaW52YWxpZGF0ZSBkZWxheSBpcwo+ICAgICBhbm90aGVyIHRvcGljLCBNeSBtYWluIHByb3Bv
c2FsIGlzIHRvIGludHJvZHVjZSBzdGFnZTEucGdkIGFuZAo+ICAgICBzdGFnZTIucGdkIGFzIGFk
ZHJlc3Mgc3BhY2UgaWRlbnRpZmllcnMgYmV0d2VlbiBkaWZmZXJlbnQgVExCIHN5c3RlbXMKPiAg
ICAgYmFzZWQgb24gdm1pZCwgYXNpZC4gTXkgbGFzdCBwYXJ0IG9mIHNpbGRlcyB3aWxsIHNob3cg
eW91IGhvdyB0bwo+ICAgICB0cmFuc2xhdGUgc3RhZ2UxLzIucGdkIHRvIGFzL3ZtaWQgaW4gUENJ
IEFUUyBzeXN0ZW0gYW5kIHRoZSBtZXRob2QKPiAgICAgY291bGQgd29yayB3aXRoIFNNTVUtdjMg
YW5kIGludGVsIFZ0LWQuIChJdCdzIHJlZ3JldCBmb3IgbWUgdGhlcmUgaXMKPiAgICAgbm8gdGlt
ZSB0byBzaG93IHlvdSB0aGUgd2hvbGUgc2xpZGVzLikKPiAKPiAgICAgSW4gb3VyIGxpZ2h0IElP
TU1VIGltcGxlbWVudGF0aW9uLCB0aGVyZSdzIG5vIElPVExCIGludmFsaWRhdGUgZGVsYXkKPiAg
ICAgcHJvYmxlbS4gQmVjYXN1ZSBJT01NVSBpcyB2ZXJ5IGNsb3NlIHRvIENQVSBNTVUgYW5kIGlu
dGVyY29ubmVjdCdzCj4gICAgIGRlbGF5IGlzIHRoZSBzYW1lIHdpdGggU01QIENQVXMgTU1VIChu
byBQQ0ksIFZNIHN1cHBvcnRlZCkuCj4gCj4gICAgIFRvIHNvbHZlIHRoZSBwcm9ibGVtLCB3ZSBj
b3VsZCBkZWZpbmUgYSBhc3luYyBtb2RlIGluIHNmZW5jZS52bWEuYiB0bwo+ICAgICBzbG92ZSB0
aGUgcHJvYmxlbSBhbmQgZmluaXNoZWQgd2l0aCBwZXJfY3B1X2lycS9leGNlcHRpb24uCgpUaGUg
c29sdXRpb24gSSBoYWQgdG8gdGhpcyBwcm9ibGVtIGlzIHBpbm5pbmcgdGhlIEFTSUQgWzFdIHVz
ZWQgYnkgdGhlCklPTU1VLCB0byBwcmV2ZW50IHRoZSBDUFUgZnJvbSByZWN5Y2xpbmcgdGhlIEFT
SUQgb24gcm9sbG92ZXIuIFRoaXMgd2F5CnRoZSBDUFUgZG9lc24ndCBoYXZlIHRvIHdhaXQgZm9y
IElPTU1VIGludmFsaWRhdGlvbnMgdG8gY29tcGxldGUsIHdoZW4Kc2NoZWR1bGluZyBhIHRhc2sg
dGhhdCBtaWdodCBub3QgZXZlbiBoYXZlIGFueXRoaW5nIHRvIGRvIHdpdGggdGhlIElPTU1VLgoK
SW4gdGhlIEFybSBTTU1VLCBBU0lEIGFuZCBJT0FTSUQgKFBBU0lEKSBhcmUgc2VwYXJhdGUgaWRl
bnRpZmllcnMuIElPQVNJRAppbmRleGVzIGFuIGVudHJ5IGluIHRoZSBjb250ZXh0IGRlc2NyaXB0
b3IgdGFibGUsIHdoaWNoIGNvbnRhaW5zIHRoZSBBU0lELgpTbyB3aXRoIHVucGlubmVkIHNoYXJl
ZCBBU0lEIHlvdSBkb24ndCBuZWVkIHRvIGludmFsaWRhdGUgdGhlIEFUQyBvbgpyb2xsb3Zlciwg
c2luY2UgdGhlIElPQVNJRCBkb2Vzbid0IGNoYW5nZSwgYnV0IHlvdSBkbyBuZWVkIHRvIG1vZGlm
eSB0aGUKY29udGV4dCBkZXNjcmlwdG9yIGFuZCBpbnZhbGlkYXRlIGNhY2hlZCB2ZXJzaW9ucyBv
ZiBpdC4KCk9uY2UgeW91IGhhdmUgcGlubmVkIEFTSURzLCB5b3UgY291bGQgYWxzbyBkZWNsYXJl
IHRoYXQgSU9BU0lEID0gQVNJRC4gSQpkb24ndCByZW1lbWJlciBmaW5kaW5nIGFuIGFyZ3VtZW50
IHRvIHN0cmljdGx5IGZvcmJpZCBpdCwgZXZlbiB0aG91Z2ggQVNJRAphbmQgSU9BU0lEIGhhdmUg
ZGlmZmVyZW50IHNpemVzIG9uIEFybSAocmVzcGVjdGl2ZWx5IDgvMTYgYW5kIDIwIGJpdHMpLgoK
VGhhbmtzLApKZWFuCgpbMV0KaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtaW9tbXUvMjAx
ODA1MTExOTA2NDEuMjMwMDgtMTctamVhbi1waGlsaXBwZS5icnVja2VyQGFybS5jb20vCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1yaXNjdiBt
YWlsaW5nIGxpc3QKbGludXgtcmlzY3ZAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJpc2N2Cg==
